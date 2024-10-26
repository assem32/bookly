import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustumItem extends StatelessWidget {
  final height;
  final double width;
  final String ?imgUrl;
  const CustumItem({
    this.height,required this.width,required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgUrl!,
          errorWidget: (context, url, error) => Icon(Icons.error),
          ),
      )
    );
  }


}

