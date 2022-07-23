import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:ecommerce_app/repositories/user_repository.dart';
import 'package:ecommerce_app/services/api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(super.initialState);

  void onLogin(String user, String password) {
    add(LoginEvent(
      user: user,
      password: password,
    ));
  }

  void onLogOut() {
    add(LogOutEvent());
  }

  void onCheckLogin() {
    add(CheckLoginEvent());
  }

  @override
  AuthenticationState get initialState => AuthenticationState.initial();

  late SharedPreferences sharedPreferences;

  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {
    if (event is LoginEvent) {
      try {
        yield LoadingState();
        //give a dellay for loading
        await Future.delayed(const Duration(seconds: 3));
        //execut api
        var url = "login";
        Map<String, dynamic> jsonBody = {
          'email': event.user!.trim().toString(),
          'password': event.password!.trim().toString()
        };

        final data =
            await APIWeb().postData(UserRepository.post(url, jsonBody));
        //retrieve data
        yield AuthenticationState(user: data);
      } catch (e) {
        yield GetFailureState(error: e.toString());
      }
    }
    //Check status login
    else if (event is CheckLoginEvent) {
      //check shared info
      sharedPreferences = await SharedPreferences.getInstance();
      var data = sharedPreferences.get('idUser');
      if (data != null) {
        yield LoggedInState();
      } else {
        yield LoggedOutState();
      }
    }
    // logout event
    else if (event is LogOutEvent) {
      sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.clear();
      yield LoggedOutState();
    }
  }
}

//Eventos
class AuthenticationEvent {}

class LoginEvent extends AuthenticationEvent {
  final String? user;
  final String? password;

  LoginEvent({
    this.user,
    this.password,
  });
}

class LogOutEvent extends AuthenticationEvent {}

class CheckLoginEvent extends AuthenticationEvent {}

//Estados
class AuthenticationState {
  final User? user;

  AuthenticationState({this.user});

  factory AuthenticationState.initial() => AuthenticationState();
}

class GetFailureState extends AuthenticationState {
  final String? error;

  GetFailureState({this.error});
}

class LoggedInState extends AuthenticationState {}

class LoggedOutState extends AuthenticationState {}

class LoadingState extends AuthenticationState {}
