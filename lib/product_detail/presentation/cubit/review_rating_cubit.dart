import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/product_detail/domain/model/review_model.dart';

class ReviewRatingCubit extends Cubit<List<ReviewModel>> {
  ReviewRatingCubit() : super([]);

  void addReview({
    required String name,
    String? rating,
    required String comments,
  }) {
    List<ReviewModel> list = [...state];
    list.add(ReviewModel(
      name: name,
      rating: rating,
      comment: comments,
      date: DateTime.now().toString(),
    ));

    emit(list);
  }
}
