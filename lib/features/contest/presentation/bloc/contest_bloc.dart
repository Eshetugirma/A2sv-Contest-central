import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'contest_event.dart';
part 'contest_state.dart';

class ContestBloc extends Bloc<ContestEvent, ContestState> {
  ContestBloc() : super(ContestInitial()) {
    on<ContestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
