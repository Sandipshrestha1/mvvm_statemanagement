import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';

class CachedImageWidget extends StatelessWidget {
  CachedImageWidget({
    super.key,
    required this.imgUrl,
    this.imageHeight,
    this.imgWidth,
    this.boxFit,
  });
  String imgUrl;
  final double? imageHeight;
  final double? imgWidth;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return CachedNetworkImage(
      height: imageHeight ?? size.width * 0.3,
      width: imgWidth ?? size.width * 0.2,
      imageUrl: imgUrl,
      fit: boxFit ?? BoxFit.cover,
      errorWidget: (context, url, error) => const Icon(
        MyAppIcons.error,
        color: Colors.red,
      ),
    );
  }
}
