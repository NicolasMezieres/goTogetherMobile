String? identifiantValidator(
    String? value, Function(bool, String) updateErrorState) {
  bool isError = false;
  String textError = "";
  if (value == null || value.isEmpty) {
    isError = true;
    textError = "Ce champ est requis";
  } else {
    textError = "";
    isError = false;
  }
  updateErrorState(isError, textError);
  return isError ? textError : null;
}
