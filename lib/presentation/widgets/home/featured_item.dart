import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udemy_clone/core/constants/routes.dart';
import 'package:udemy_clone/domain/entities/course.dart';
import 'package:udemy_clone/presentation/widgets/home/best_seller_label.dart';
import 'package:udemy_clone/presentation/widgets/home/rating_stars.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/text_styles.dart';

class FeaturedItem extends StatelessWidget {
  final Course course;
  const FeaturedItem({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, courseDetailPage),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 2 / 3 - 32,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(course.coverUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  course.title,
                  maxLines: 2,
                  style: loginBody.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  course.owner,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '${course.rating}',
                      style: ratingNumberText.copyWith(
                        fontSize: 12,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    RatingStars(rating: course.rating),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '(${course.reviewsCount})',
                      style: reviewText.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Web Exclusive',
                  style: loginBody.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const BestSellerLabel(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


