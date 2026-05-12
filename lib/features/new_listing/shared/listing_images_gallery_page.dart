import 'dart:io';

import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/shared/listing_images_primary_badge.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ListingImagesGalleryPage extends StatefulWidget {
  const ListingImagesGalleryPage({
    super.key,
    required this.images,
    required this.initialIndex,
    required this.primaryIndex,
  });

  final List<File> images;
  final int initialIndex;
  final int primaryIndex;

  @override
  State<ListingImagesGalleryPage> createState() =>
      _ListingImagesGalleryPageState();
}

class _ListingImagesGalleryPageState extends State<ListingImagesGalleryPage> {
  late final PageController _pageController;
  late int _currentIndex;
  late int _primaryIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex.clamp(0, widget.images.length - 1);
    _primaryIndex = widget.primaryIndex.clamp(0, widget.images.length - 1);
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _setCurrentAsPrimary() {
    setState(() => _primaryIndex = _currentIndex);
  }

  void _close() {
    Navigator.of(context).pop(_primaryIndex);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isPrimary = _currentIndex == _primaryIndex;

    return Scaffold(
      backgroundColor: scheme.scrim,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: scheme.onPrimary,
        elevation: 0,
        leading: IconButton(
          onPressed: _close,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          '${_currentIndex + 1} / ${widget.images.length}',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: scheme.onPrimary),
        ),
        actions: [
          if (isPrimary)
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: ListingImagesPrimaryBadge(),
            ),
        ],
      ),
      body: PhotoViewGallery.builder(
        pageController: _pageController,
        itemCount: widget.images.length,
        backgroundDecoration: BoxDecoration(color: scheme.scrim),
        onPageChanged: (index) => setState(() => _currentIndex = index),
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: FileImage(widget.images[index]),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 3.5,
            heroAttributes: PhotoViewHeroAttributes(
              tag: widget.images[index].path,
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            context.paddingMedium,
            context.spaceSmall,
            context.paddingMedium,
            context.spaceMedium,
          ),
          child: isPrimary
              ? FilledButton.tonal(
                  onPressed: _close,
                  child: const Text('Done'),
                )
              : FilledButton(
                  onPressed: _setCurrentAsPrimary,
                  child: const Text('Set as cover photo'),
                ),
        ),
      ),
    );
  }
}
