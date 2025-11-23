part of 'featuredbooks_cubit.dart';

@immutable
sealed class FeaturedbooksState {}

final class FeaturedbooksInitial extends FeaturedbooksState {}
final class FeaturedbooksLoading extends FeaturedbooksState {}
final class FeaturedbooksSuccess extends FeaturedbooksState {
    final List<BooksModel> books;

  FeaturedbooksSuccess({required this.books});

}
final class FeaturedbooksFailure extends FeaturedbooksState {
  final String errMessage;
  FeaturedbooksFailure(this.errMessage);

}
