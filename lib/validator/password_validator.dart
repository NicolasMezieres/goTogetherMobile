RegExp patternUpperCase = RegExp(r'[A-Z]');
RegExp patternLowerCase = RegExp(r'[a-z]');
RegExp patternNumber = RegExp(r'[0-9]');
RegExp patternSpecial = RegExp(r'[!@#$%^&*(),.?":{}|]');
String? passwordValidator(
    String? value, Function(bool, String) updateErrorState) {
  bool isError = true;
  String textError;
  if (value == null || value.isEmpty) {
    textError = "Ce champ est requis";
  } else if (!patternUpperCase.hasMatch(value)) {
    textError = "Nécessite une majuscule";
  } else if (!patternLowerCase.hasMatch(value)) {
    textError = "Nécessite une minuscule";
  } else if (!patternNumber.hasMatch(value)) {
    textError = "Nécessite un chiffre";
  } else if (!patternSpecial.hasMatch(value)) {
    textError = "Nécessite un caractère spécial";
  } else if (value.length < 16) {
    textError = "Minimum 16 caractère";
  } else {
    textError = "";
    isError = false;
  }
  updateErrorState(isError, textError);
  return isError ? textError : null;
}
