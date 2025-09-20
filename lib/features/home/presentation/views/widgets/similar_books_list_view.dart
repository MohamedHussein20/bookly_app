import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 4, right: 16),
            child: FeaturedItem(imageUrl: "https://www.google.com/imgres?q=image%20url&imgurl=https%3A%2F%2Fplus.unsplash.com%2Fpremium_photo-1683865776032-07bf70b0add1%3Ffm%3Djpg%26q%3D60%26w%3D3000%26ixlib%3Drb-4.1.0%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MXx8dXJsfGVufDB8fDB8fHww&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Furl&docid=cJoSYZP28d4B0M&tbnid=2ZkF8MF1BG4YcM&vet=12ahUKEwjhtrPTjeiPAxW_UaQEHbaNBS0QM3oECBcQAA..i&w=3000&h=1688&hcb=2&ved=2ahUKEwjhtrPTjeiPAxW_UaQEHbaNBS0QM3oECBcQAA",),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
