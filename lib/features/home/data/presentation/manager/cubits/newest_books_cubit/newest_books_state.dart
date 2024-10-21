import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();
  
    @override
  // TODO: implement props
  List<Object?> get props => [];


}

  class NewestBooksInitial extends NewestBooksState {

  }
  
  class NewestBooksLoading extends NewestBooksState {}


  class NewestBooksFailure extends NewestBooksState {
    final String errMessage;

  const NewestBooksFailure( this.errMessage);
    
  }

  class NewestBooksSuccess extends NewestBooksState {

    final List<BookModel> books;

  const NewestBooksSuccess( this.books);

    
  }