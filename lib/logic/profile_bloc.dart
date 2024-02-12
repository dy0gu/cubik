import "dart:convert";

import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";
import "package:image_picker/image_picker.dart";

class Profile extends Equatable {
  final String username;
  final String base64Image;

  const Profile({
    this.username = "Guest",
    this.base64Image = "",
  });

  @override
  List<Object?> get props => [username, base64Image];
}

sealed class ProfileEvent {}

class ProfileUsernameChanged extends ProfileEvent {
  String username;

  ProfileUsernameChanged(this.username);
}

class ProfilePictureUploaded extends ProfileEvent {}

class ProfileBloc extends HydratedBloc<ProfileEvent, Profile> {
  ProfileBloc() : super(const Profile()) {
    on<ProfileUsernameChanged>((event, emit) {
      emit(Profile(
        username: event.username,
        base64Image: state.base64Image,
      ));
    });
    on<ProfilePictureUploaded>((event, emit) async {
      XFile? xfile;
      try {
        xfile = await ImagePicker().pickImage(
            source: ImageSource.gallery,
            maxHeight: 1000,
            maxWidth: 1000,
            imageQuality: 100,
            requestFullMetadata: false);
      } catch (e) {
        xfile = null;
      }
      if (xfile == null) return;
      final bytes = await xfile.readAsBytes();
      final base64 = base64Encode(bytes);
      emit(Profile(
        username: state.username,
        base64Image: base64,
      ));
    });
  }

  @override
  Profile fromJson(Map<String, dynamic> json) =>
      (json["username"] is String && json["base64Image"] is String)
          ? Profile(
              username: json["username"],
              base64Image: json["base64Image"],
            )
          : const Profile();

  @override
  Map<String, dynamic> toJson(Profile state) => <String, dynamic>{
        "username": state.username,
        "base64Image": state.base64Image,
      };
}
