import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/other_clients/google_map/location_getter_client.dart';
import 'package:arzly/core/network/other_clients/google_map/models/place_details_result.dart';
import 'package:arzly/core/utils/location_getter.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_address_capture_section.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_address_search_screen.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_form_header.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_form_section_label.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_route_result.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PickupLocationForm extends ConsumerStatefulWidget {
  final PickupLocation? existing;
  final Future<void> Function(PickupLocation location) onSubmit;

  const PickupLocationForm({super.key, this.existing, required this.onSubmit});

  bool get isEditing => existing != null;

  @override
  ConsumerState<PickupLocationForm> createState() => _PickupLocationFormState();
}

class _PickupLocationFormState extends ConsumerState<PickupLocationForm> {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  final _notesController = TextEditingController();
  late LocationLabel _label;
  late LocationPreset _locationPreset;
  late bool _isDefault;
  bool _isSubmitting = false;
  bool _showFieldErrors = false;
  double? _gpsLat;
  double? _gpsLon;
  String? _staticMapUrl;
  bool _gpsLoading = false;
  late bool _entityHadCoordinates;

  static const _mockUserId = 'firebase-uid-123';

  bool get _hasGpsCoords => _gpsLat != null && _gpsLon != null;

  String? get _mapPreviewUrl {
    if (_staticMapUrl != null && _staticMapUrl!.isNotEmpty) {
      return _staticMapUrl;
    }
    if (_hasGpsCoords) {
      return 'https://staticmap.openstreetmap.de/staticmap.php'
          '?center=$_gpsLat,$_gpsLon&zoom=15&size=256x160&maptype=mapnik';
    }
    return null;
  }

  String _locationServiceErrorMessage(Object e) {
    if (e is ApiException) return e.userMessage;
    if (e is LocationGetterException) return e.message;
    return 'Could not resolve this address. Try again.';
  }

  void _applyPlaceDetails(PlaceDetailsResult details) {
    setState(() {
      _gpsLat = details.latitude;
      _gpsLon = details.longitude;
      _staticMapUrl = details.staticMapUrl;
      _addressController.text = details.formattedAddress;
    });
  }

  InputDecoration _modernFieldDecoration(
    BuildContext context, {
    required String labelText,
    required String hintText,
    int maxLines = 1,
  }) {
    final c = Theme.of(context).colorScheme;
    final r = BorderRadius.circular(context.borderRadiusMedium);
    final idleBorder = BorderSide(
      color: c.outlineVariant.withValues(alpha: 0.65),
    );
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      filled: true,
      fillColor: c.surfaceContainerHigh.withValues(alpha: 0.65),
      alignLabelWithHint: maxLines > 1,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: OutlineInputBorder(borderRadius: r, borderSide: idleBorder),
      enabledBorder: OutlineInputBorder(
        borderRadius: r,
        borderSide: idleBorder,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: r,
        borderSide: BorderSide(color: c.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: r,
        borderSide: BorderSide(color: c.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: r,
        borderSide: BorderSide(color: c.error, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
    );
  }

  @override
  void initState() {
    super.initState();
    final e = widget.existing;
    _label = e?.label ?? LocationLabel.home;
    _locationPreset = e?.locationPreset ?? LocationPreset.beirut;
    _addressController.text = e?.address ?? '';
    _notesController.text = e?.notes ?? '';
    _isDefault = e?.isDefault ?? false;
    _entityHadCoordinates = false;
    if (e != null) {
      final meaningful = e.lat.abs() > 1e-9 || e.lon.abs() > 1e-9;
      if (meaningful) {
        _gpsLat = e.lat;
        _gpsLon = e.lon;
        _entityHadCoordinates = true;
      }
    }
  }

  @override
  void dispose() {
    _addressController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _fetchGps() async {
    setState(() => _gpsLoading = true);
    try {
      final data = await ref
          .read(locationGetterProvider)
          .getLocationWithFallback();
      if (!mounted) return;
      if (data?.latitude == null || data?.longitude == null) {
        setState(() => _gpsLoading = false);
        AppSnackBar.show(
          context,
          message: 'Could not get your location. Try again.',
          variant: AppSnackBarVariant.error,
        );
        return;
      }
      final details = await ref
          .read(locationServiceProvider)
          .reverseGeocode(data!.latitude!, data.longitude!);
      if (!mounted) return;
      _applyPlaceDetails(details);
      setState(() => _gpsLoading = false);
    } catch (e) {
      if (!mounted) return;
      setState(() => _gpsLoading = false);
      AppSnackBar.show(
        context,
        message: _locationServiceErrorMessage(e),
        variant: AppSnackBarVariant.error,
      );
    }
  }

  Future<void> _openAddressSearch() async {
    if (_isSubmitting) return;
    final details = await openPickupLocationAddressSearch(context);
    if (!mounted || details == null) return;
    _applyPlaceDetails(details);
  }

  Future<void> _submit() async {
    setState(() => _showFieldErrors = true);
    if (!_hasGpsCoords) {
      AppSnackBar.show(
        context,
        message: 'Set a pickup spot using GPS or address search.',
        variant: AppSnackBarVariant.error,
      );
      return;
    }
    if (_addressController.text.trim().isEmpty) {
      AppSnackBar.show(
        context,
        message: 'Address could not be resolved. Try GPS or search again.',
        variant: AppSnackBarVariant.error,
      );
      return;
    }
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isSubmitting = true);
    final notesText = _notesController.text.trim();
    final existing = widget.existing;
    final lat = _gpsLat ?? existing?.lat ?? 0.0;
    final lon = _gpsLon ?? existing?.lon ?? 0.0;
    final location = PickupLocation(
      id: existing?.id ?? '',
      userId: existing?.userId ?? _mockUserId,
      label: _label,
      address: _addressController.text.trim(),
      notes: notesText.isEmpty ? null : notesText,
      lat: lat,
      lon: lon,
      isDefault: _isDefault,
      locationPreset: _locationPreset,
    );
    try {
      await widget.onSubmit(location);
      if (mounted) {
        Navigator.of(context).pop(
          widget.isEditing
              ? PickupLocationRouteResult.updated
              : PickupLocationRouteResult.saved,
        );
      }
    } catch (_) {
      if (mounted) {
        AppSnackBar.show(
          context,
          message: widget.isEditing
              ? 'Could not update location. Try again.'
              : 'Could not save location. Try again.',
          variant: AppSnackBarVariant.error,
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSubmitting = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pageBg = colors.surfaceContainerHigh.withValues(alpha: 0.65);
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final ctaRadius = BorderRadius.circular(context.borderRadiusLarge - 4);
    final ctaHeight = context.spaceLarge + 18;

    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          context.paddingMedium,
          context.spaceSmall,
          context.paddingMedium,
          context.bottomPadding + context.spaceMedium,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const PickupLocationFormHeader(),
              SizedBox(height: context.spaceMedium),
              const PickupLocationFormSectionLabel(title: 'Location'),
              PickupLocationAddressCaptureSection(
                isGpsLoading: _gpsLoading,
                hasCoordinates: _hasGpsCoords,
                showUpdateCoordinatesHint:
                    widget.isEditing && _entityHadCoordinates,
                requestEnabled: !_isSubmitting,
                onRequestLocation: _fetchGps,
                onSearchAddress: _openAddressSearch,
                resolvedAddress: _addressController.text.trim().isEmpty
                    ? null
                    : _addressController.text.trim(),
                staticMapUrl: _mapPreviewUrl,
              ),
              SizedBox(height: context.spaceMedium),
              const PickupLocationFormSectionLabel(
                title: LocationPresetDisplay.fieldTitle,
              ),
              CarsForSaleStyleDropdownField<LocationPreset>(
                fieldsResetKey: widget.existing?.id,
                fieldSuffix: 'location_preset',
                value: _locationPreset,
                onChanged: (v) {
                  if (v != null) {
                    setState(() => _locationPreset = v);
                  }
                },
                hintText: 'Choose area',
                validationMessage: 'Choose an area',
                showRequiredErrors: _showFieldErrors,
                pageBg: pageBg,
                scheme: colors,
                menuRadius: menuRadius,
                items: [
                  for (final preset in LocationPreset.values)
                    DropdownMenuItem(
                      value: preset,
                      child: Text(preset.label),
                    ),
                ],
              ),
              SizedBox(height: context.spaceMedium),
              const PickupLocationFormSectionLabel(title: 'Label'),
              SegmentedButton<LocationLabel>(
                segments: [
                  for (final e in LocationLabel.values)
                    ButtonSegment<LocationLabel>(
                      value: e,
                      icon: Icon(e.chipPresentation.keys.single),
                      label: Text(e.chipPresentation.values.single),
                    ),
                ],
                selected: {_label},
                onSelectionChanged: (next) {
                  if (next.isNotEmpty) {
                    setState(() => _label = next.first);
                  }
                },
                style: ButtonStyle(
                  visualDensity: VisualDensity.standard,
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: context.paddingSmall,
                      vertical: context.spaceSmall,
                    ),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        context.borderRadiusMedium + 2,
                      ),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return colors.primaryContainer;
                    }
                    return colors.surfaceContainerHigh.withValues(alpha: 0.5);
                  }),
                  foregroundColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return colors.onPrimaryContainer;
                    }
                    return colors.onSurface;
                  }),
                  side: WidgetStatePropertyAll(
                    BorderSide(
                      color: colors.outlineVariant.withValues(alpha: 0.55),
                    ),
                  ),
                ),
              ),
              SizedBox(height: context.spaceMedium),
              const PickupLocationFormSectionLabel(title: 'Details'),
              TextFormField(
                controller: _notesController,
                textCapitalization: TextCapitalization.sentences,
                decoration: _modernFieldDecoration(
                  context,
                  labelText: 'Notes (optional)',
                  hintText: 'Landmarks, gate code, parking…',
                  maxLines: 2,
                ),
                maxLines: 2,
              ),
              SizedBox(height: context.spaceSmall),
              Material(
                color: colors.surfaceContainerHigh.withValues(alpha: 0.45),
                borderRadius: BorderRadius.circular(context.borderRadiusLarge),
                clipBehavior: Clip.antiAlias,
                child: SwitchListTile.adaptive(
                  value: _isDefault,
                  onChanged: (v) => setState(() => _isDefault = v),
                  title: Text(
                    'Default pickup',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    'Use this spot first when posting listings.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: context.paddingMedium * 0.75,
                    vertical: context.spaceSmall,
                  ),
                ),
              ),
              SizedBox(height: context.spaceMedium),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(0, ctaHeight),
                        shape: RoundedRectangleBorder(borderRadius: ctaRadius),
                        side: BorderSide(
                          color: colors.outlineVariant.withValues(alpha: 0.75),
                        ),
                        foregroundColor: colors.onSurface,
                      ),
                      onPressed: _isSubmitting
                          ? null
                          : () => Navigator.of(context).pop(),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.15,
                          color: colors.onSurface,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: context.paddingSmall + 4),
                  Expanded(
                    flex: 2,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(0, ctaHeight),
                        shape: RoundedRectangleBorder(borderRadius: ctaRadius),
                        elevation: _isSubmitting ? 0 : 2,
                        shadowColor: colors.primary.withValues(alpha: 0.35),
                      ),
                      onPressed: _isSubmitting ? null : _submit,
                      child: _isSubmitting
                          ? SizedBox(
                              height: 22,
                              width: 22,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: colors.onPrimary,
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  widget.isEditing
                                      ? Icons.check_rounded
                                      : Icons.add_location_alt_rounded,
                                  size: 22,
                                ),
                                SizedBox(width: context.spaceSmall),
                                Flexible(
                                  child: Text(
                                    widget.isEditing
                                        ? 'Save changes'
                                        : 'Save pickup spot',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.2,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
