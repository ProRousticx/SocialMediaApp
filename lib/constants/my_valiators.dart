String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return "Email is empty";
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value!.isEmpty) {
    return "Password is empty";
  }
  if (value.length < 8 || value.length > 16) {
    return "Password must be between 8-16 characters";
  }
  return null;
}

String? nameValidator(String? value) {
  if (value!.isEmpty) {
    return "Name is empty";
  } else if (value.length < 4) {
    return "Name is too short";
  }
  return null;
}
