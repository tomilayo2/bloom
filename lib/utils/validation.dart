

class Validation {
  Validation._();

  static String? validateEmail(String? value) {
    if (!RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{1,253}[a-zA-Z0-9])?)+$")
        .hasMatch(value ?? "") ||
        !value!.endsWith('.com')) {
      return "Please enter a valid email";
    }
    return null;
  }
}
