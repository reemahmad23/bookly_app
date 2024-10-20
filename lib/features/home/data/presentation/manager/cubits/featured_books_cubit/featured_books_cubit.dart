import 'package:bookly_app/features/home/data/presentation/manager/cubits/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());


  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
    
  }
}
