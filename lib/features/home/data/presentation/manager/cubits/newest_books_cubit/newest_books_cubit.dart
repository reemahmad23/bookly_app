import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/presentation/manager/cubits/newest_books_cubit/newest_books_state.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

class FeaturedBooksCubit extends Cubit<NewestBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(NewestBooksInitial());


  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBook() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
    
  }
}