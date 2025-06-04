import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileState {
  final String firstName;
  final String lastName;
  final String email;

  ProfileState({this.firstName = '', this.lastName = '', this.email = ''});

  ProfileState copyWith({String? firstName, String? lastName, String? email}) {
    return ProfileState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
    );
  }
}

class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier() : super(ProfileState());

  void update(String fname, String lname, String email) {
    state = state.copyWith(firstName: fname, lastName: lname, email: email);
  }
}

final profileProvider = StateNotifierProvider<ProfileNotifier, ProfileState>(
  (ref) => ProfileNotifier(),
);
