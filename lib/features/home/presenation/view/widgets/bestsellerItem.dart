import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/features/home/data/model/BookModel.dart';

import 'package:get/get.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final Items bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/details');
      },
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: getWidth(70, context),
            height: getHeight(105, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: CachedNetworkImage(
              imageUrl: bookModel!.volumeInfo!.imageLinks?.thumbnail.toString() ??  '',
              errorWidget: (context, url, error) => Icon(Icons.error),
              ),

          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookModel!.volumeInfo!.title.toString(),
                style: Styles.textStyle20,
              ),
              Text(
                bookModel!.volumeInfo!.authors.toString(),
                style: Styles.textStyle14,
              ),
              Row(
                children: [
                  const Text(
                    'Free',
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  const Icon(
                    Icons.star,
                    color: yellowColor,
                  ),
                  SizedBox(
                    width: getWidth(6.3, context),
                  ),
                  Text(
                    bookModel!.volumeInfo!.averageRating==null ? '0' : bookModel!.volumeInfo!.averageRating.toString(),
                    style: Styles.textStyle16,
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
