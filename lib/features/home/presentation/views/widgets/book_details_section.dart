import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const FeaturedItem(
            imageUrl:
                "https://www.google.com/imgres?q=image%20url&imgurl=https%3A%2F%2Fplus.unsplash.com%2Fpremium_photo-1683865776032-07bf70b0add1%3Ffm%3Djpg%26q%3D60%26w%3D3000%26ixlib%3Drb-4.1.0%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MXx8dXJsfGVufDB8fDB8fHww&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Furl&docid=cJoSYZP28d4B0M&tbnid=2ZkF8MF1BG4YcM&vet=12ahUKEwjhtrPTjeiPAxW_UaQEHbaNBS0QM3oECBcQAA..i&w=3000&h=1688&hcb=2&ved=2ahUKEwjhtrPTjeiPAxW_UaQEHbaNBS0QM3oECBcQAA",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
          count: 250,
        ),
      ],
    );
  }
}
