import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_page/data/models/books_model.dart';
import 'package:bookly_app/features/home_page/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo{
  final ApiService apiService;

  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() async {
    try{
      var data =  await apiService.getBooks(endPoint: 'volumes?q=subject:Programming&feltering=free&Sorting=newest');
      List<BooksModel> books = [];
      for(var item in data['items']){
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch(e){
        if(e is DioException){
          return left(ServerFailure.fromDioError(e));
        }
          return left(ServerFailure(e.toString()));
    }
    }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }


}