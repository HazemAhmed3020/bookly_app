import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/books_model.dart';
import '../../../data/repos/home_repo.dart';
part 'similar_books_state.dart';


class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> similarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
          (failure) {
        emit(SimilarBooksFailure(errMessage: failure.errMessage));
      },
          (books) {
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
