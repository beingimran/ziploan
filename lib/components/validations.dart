class Validators {
  String? validatedMobile(value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
    // String pattern = '^\\d{10}';
    RegExp regExp = new RegExp(pattern);
    value = value.toString().trim();
    if (value.toString().length == 13 &&
        value.toString().substring(0, 3) == "+91") {
      value = value.toString().substring(value.toString().length - 10);
    }
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
}
