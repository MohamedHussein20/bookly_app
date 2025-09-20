import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NewestBooksItem();
      },
    );
  }
}
