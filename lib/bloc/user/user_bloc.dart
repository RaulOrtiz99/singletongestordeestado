// El user bloc es quien tiene la informacion actual y quien procesa los eventos
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {});
  }
}
