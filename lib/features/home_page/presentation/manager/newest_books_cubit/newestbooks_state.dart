part of 'newestbooks_cubit.dart';

@immutable
sealed class NewestbooksState {}

final class NewestbooksInitial extends NewestbooksState {}
final class NewestbooksLoading extends NewestbooksState {}
final class NewestbooksSuccess extends NewestbooksState {
  final List<BooksModel> books;

  NewestbooksSuccess(this.books);
}
final class NewestbooksFailure extends NewestbooksState {
    final String errMessage;

  NewestbooksFailure(this.errMessage);

}
