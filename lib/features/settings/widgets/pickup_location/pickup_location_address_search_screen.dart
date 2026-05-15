import 'dart:async';

import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/other_clients/google_map/location_getter_client.dart';
import 'package:arzly/core/network/other_clients/google_map/models/place_details_result.dart';
import 'package:arzly/core/network/other_clients/google_map/models/place_result.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<PlaceDetailsResult?> openPickupLocationAddressSearch(
  BuildContext context,
) {
  return Navigator.of(context).push<PlaceDetailsResult>(
    MaterialPageRoute<PlaceDetailsResult>(
      builder: (_) => const PickupLocationAddressSearchScreen(),
    ),
  );
}

class PickupLocationAddressSearchScreen extends ConsumerStatefulWidget {
  const PickupLocationAddressSearchScreen({super.key});

  @override
  ConsumerState<PickupLocationAddressSearchScreen> createState() =>
      _PickupLocationAddressSearchScreenState();
}

class _PickupLocationAddressSearchScreenState
    extends ConsumerState<PickupLocationAddressSearchScreen> {
  final _searchController = TextEditingController();
  Timer? _debounce;
  bool _searching = false;
  bool _resolvingPlace = false;
  List<PlaceResult> _results = const [];

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _onQueryChanged(String value) {
    _debounce?.cancel();
    final trimmed = value.trim();
    if (trimmed.length < 2) {
      setState(() {
        _results = const [];
        _searching = false;
      });
      return;
    }
    setState(() => _searching = true);
    _debounce = Timer(const Duration(milliseconds: 400), () => _runSearch(trimmed));
  }

  Future<void> _runSearch(String query) async {
    try {
      final results =
          await ref.read(locationServiceProvider).autocomplete(query);
      if (!mounted) return;
      setState(() {
        _results = results;
        _searching = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _results = const [];
        _searching = false;
      });
      AppSnackBar.show(
        context,
        message: _errorMessage(e),
        variant: AppSnackBarVariant.error,
      );
    }
  }

  Future<void> _selectPlace(PlaceResult place) async {
    setState(() => _resolvingPlace = true);
    try {
      final details = await ref
          .read(locationServiceProvider)
          .getPlaceDetails(place.placeId);
      if (!mounted) return;
      Navigator.of(context).pop(details);
    } catch (e) {
      if (!mounted) return;
      AppSnackBar.show(
        context,
        message: _errorMessage(e),
        variant: AppSnackBarVariant.error,
      );
    } finally {
      if (mounted) {
        setState(() => _resolvingPlace = false);
      }
    }
  }

  String _errorMessage(Object e) {
    if (e is ApiException) return e.userMessage;
    return 'Could not load address results. Try again.';
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surface;
    final fillColor = scheme.surfaceContainerHigh.withValues(alpha: 0.65);

    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        backgroundColor: pageBg,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: _resolvingPlace
              ? null
              : () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          'Search address',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  context.paddingMedium,
                  context.spaceSmall,
                  context.paddingMedium,
                  context.spaceSmall,
                ),
                child: TextField(
                  controller: _searchController,
                  autofocus: true,
                  textInputAction: TextInputAction.search,
                  onChanged: _onQueryChanged,
                  decoration: carPickerSearchDecoration(
                    context,
                    fillColor,
                    scheme,
                    hintText: 'Street, building, area…',
                  ),
                ),
              ),
              Expanded(child: _buildResults(context, scheme)),
            ],
          ),
          if (_resolvingPlace)
            Positioned.fill(
              child: AbsorbPointer(
                child: ColoredBox(
                  color: scheme.scrim.withValues(alpha: 0.35),
                  child: Center(
                    child: CircularProgressIndicator(color: scheme.primary),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildResults(BuildContext context, ColorScheme scheme) {
    if (_searching) {
      return Center(
        child: CircularProgressIndicator(color: scheme.primary),
      );
    }

    final query = _searchController.text.trim();
    if (query.length < 2) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(context.paddingMedium),
          child: Text(
            'Type at least 2 characters to search.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (_results.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(context.paddingMedium),
          child: Text(
            'No addresses found. Try a different search.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.fromLTRB(
        context.paddingMedium,
        0,
        context.paddingMedium,
        context.bottomPadding + context.spaceMedium,
      ),
      itemCount: _results.length,
      separatorBuilder: (_, _) => Divider(
        height: 1,
        color: scheme.outlineVariant.withValues(alpha: 0.35),
      ),
      itemBuilder: (context, index) {
        final place = _results[index];
        return ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spaceSmall,
            vertical: context.spaceSmall * 0.25,
          ),
          leading: Icon(Icons.location_on_outlined, color: scheme.primary),
          title: Text(
            place.fullText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          onTap: _resolvingPlace ? null : () => _selectPlace(place),
        );
      },
    );
  }
}
