import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NewestBooksItem();
        },
      ),
    );
  }
}
