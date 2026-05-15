import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/network/other_clients/google_map/location_getter_client.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PickupLocationStaticMapVariant { banner, avatar, thumbnail }

class PickupLocationStaticMap extends ConsumerStatefulWidget {
  const PickupLocationStaticMap({
    super.key,
    required this.latitude,
    required this.longitude,
    this.variant = PickupLocationStaticMapVariant.banner,
    this.width = 400,
    this.height = 250,
  });

  final double? latitude;
  final double? longitude;
  final PickupLocationStaticMapVariant variant;
  final int width;
  final int height;

  @override
  ConsumerState<PickupLocationStaticMap> createState() =>
      _PickupLocationStaticMapState();
}

class _PickupLocationStaticMapState extends ConsumerState<PickupLocationStaticMap> {
  String? _imageUrl;
  bool _loadingUrl = false;
  int _requestId = 0;

  bool get _hasCoords =>
      widget.latitude != null && widget.longitude != null;

  @override
  void initState() {
    super.initState();
    _fetchMapUrl();
  }

  @override
  void didUpdateWidget(PickupLocationStaticMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.latitude != widget.latitude ||
        oldWidget.longitude != widget.longitude ||
        oldWidget.width != widget.width ||
        oldWidget.height != widget.height) {
      _fetchMapUrl();
    }
  }

  Future<void> _fetchMapUrl() async {
    final lat = widget.latitude;
    final lon = widget.longitude;
    if (lat == null || lon == null) {
      setState(() {
        _imageUrl = null;
        _loadingUrl = false;
      });
      return;
    }

    final requestId = ++_requestId;
    setState(() => _loadingUrl = true);

    try {
      final url = await ref.read(locationServiceProvider).getStaticMapUrl(
            lat: lat,
            lng: lon,
            width: widget.width,
            height: widget.height,
          );
      if (!mounted || requestId != _requestId) return;
      setState(() {
        _imageUrl = url;
        _loadingUrl = false;
      });
    } catch (_) {
      if (!mounted || requestId != _requestId) return;
      setState(() {
        _imageUrl = null;
        _loadingUrl = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    if (!_hasCoords) {
      return _shapeChild(context, colors, _fallback(colors));
    }

    if (_loadingUrl || _imageUrl == null || _imageUrl!.isEmpty) {
      return _shapeChild(context, colors, _loading(colors));
    }

    return _shapeChild(
      context,
      colors,
      CachedNetworkImage(
        imageUrl: _imageUrl!,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        fadeInDuration: const Duration(milliseconds: 280),
        placeholder: (_, _) => _loading(colors),
        errorWidget: (_, _, _) => _fallback(colors),
      ),
    );
  }

  Widget _shapeChild(BuildContext context, ColorScheme colors, Widget child) {
    return _MapFrame(variant: widget.variant, child: child);
  }

  Widget _loading(ColorScheme colors) => _MapLoading(colors: colors);

  Widget _fallback(ColorScheme colors) =>
      _MapFallback(colors: colors, variant: widget.variant);
}

class SavedLocationMapThumbnail extends StatelessWidget {
  const SavedLocationMapThumbnail({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  final double? latitude;
  final double? longitude;

  static const int _mapPixels = 152;

  @override
  Widget build(BuildContext context) {
    return PickupLocationStaticMap(
      latitude: latitude,
      longitude: longitude,
      variant: PickupLocationStaticMapVariant.thumbnail,
      width: _mapPixels,
      height: _mapPixels,
    );
  }
}

class SavedLocationMapAvatar extends StatelessWidget {
  const SavedLocationMapAvatar({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  final double? latitude;
  final double? longitude;

  static double sizeOf(BuildContext context) =>
      context.screenWidth * 0.16 + 8;

  @override
  Widget build(BuildContext context) {
    final diameter = sizeOf(context).clamp(56.0, 72.0).round();
    return PickupLocationStaticMap(
      latitude: latitude,
      longitude: longitude,
      variant: PickupLocationStaticMapVariant.avatar,
      width: diameter,
      height: diameter,
    );
  }
}

class PickupLocationCachedMapImage extends StatelessWidget {
  const PickupLocationCachedMapImage({
    super.key,
    this.imageUrl,
    this.variant = PickupLocationStaticMapVariant.banner,
  });

  final String? imageUrl;
  final PickupLocationStaticMapVariant variant;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final hasUrl = imageUrl != null && imageUrl!.isNotEmpty;

    final child = hasUrl
        ? CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            fadeInDuration: const Duration(milliseconds: 280),
            placeholder: (_, _) => _MapLoading(colors: colors),
            errorWidget: (_, _, _) =>
                _MapFallback(colors: colors, variant: variant),
          )
        : _MapFallback(colors: colors, variant: variant);

    return _MapFrame(variant: variant, child: child);
  }
}

class PickupLocationMapPreview extends StatelessWidget {
  const PickupLocationMapPreview({
    super.key,
    this.imageUrl,
    this.latitude,
    this.longitude,
    this.fetchUrlFromCoordinates = false,
  });

  final String? imageUrl;
  final double? latitude;
  final double? longitude;
  final bool fetchUrlFromCoordinates;

  @override
  Widget build(BuildContext context) {
    if (fetchUrlFromCoordinates) {
      return PickupLocationStaticMap(
        latitude: latitude,
        longitude: longitude,
      );
    }
    return PickupLocationCachedMapImage(imageUrl: imageUrl);
  }
}

class _MapFrame extends StatelessWidget {
  const _MapFrame({required this.variant, required this.child});

  final PickupLocationStaticMapVariant variant;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    if (variant == PickupLocationStaticMapVariant.thumbnail) {
      final radius = BorderRadius.circular(context.borderRadiusMedium - 2);
      const size = 76.0;
      return ClipRRect(
        borderRadius: radius,
        child: SizedBox(width: size, height: size, child: child),
      );
    }

    if (variant == PickupLocationStaticMapVariant.avatar) {
      final diameter = SavedLocationMapAvatar.sizeOf(context);
      return Container(
        width: diameter,
        height: diameter,
        padding: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: colors.outlineVariant.withValues(alpha: 0.55),
          ),
          boxShadow: [
            BoxShadow(
              color: colors.shadow.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors.surfaceContainerHighest.withValues(alpha: 0.65),
          ),
          child: ClipOval(child: child),
        ),
      );
    }

    final radius = BorderRadius.circular(context.borderRadiusMedium);
    final height = context.screenWidth * 0.38;
    return ClipRRect(
      borderRadius: radius,
      child: SizedBox(
        height: height.clamp(120.0, 200.0),
        width: double.infinity,
        child: child,
      ),
    );
  }
}

class _MapLoading extends StatelessWidget {
  const _MapLoading({required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: colors.surfaceContainerHigh,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: colors.primary,
        ),
      ),
    );
  }
}

class _MapFallback extends StatelessWidget {
  const _MapFallback({required this.colors, required this.variant});

  final ColorScheme colors;
  final PickupLocationStaticMapVariant variant;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: colors.surfaceContainerHigh,
      child: Center(
        child: Icon(
          Icons.map_rounded,
          color: colors.onSurfaceVariant,
          size: switch (variant) {
            PickupLocationStaticMapVariant.avatar => 26.0,
            PickupLocationStaticMapVariant.thumbnail => 28.0,
            PickupLocationStaticMapVariant.banner => 40.0,
          },
        ),
      ),
    );
  }
}
