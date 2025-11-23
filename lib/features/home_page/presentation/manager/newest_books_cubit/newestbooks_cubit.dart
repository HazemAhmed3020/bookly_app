import 'package:bookly_app/features/home_page/data/models/books_model.dart';
import 'package:bookly_app/features/home_page/data/repos/home_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.homeRepo) : super(NewestbooksInitial());
  final HomeRepo homeRepo;

  Future<void> newestBooks() async {
    emit(NewestbooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewestbooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewestbooksSuccess(books));
      },
    );
  }
}
