import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiService apiService;

  HomeRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {}
}
