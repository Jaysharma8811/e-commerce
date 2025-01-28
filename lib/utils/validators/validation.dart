class TValidator{
  static String? validateEmail(String? value){
    if(value==null||value.isEmpty){
      return"Email is required";
    }
  //   Regular  expression  for email validation

    final  emailRefExp=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRefExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value==null||value.isEmpty){
      return 'Password is required';
    }

  //   checking minimum password length
if(value.length<6){
  return 'Password length must be more than or equal to 6 letters';
}
    // checking for uppercase letter
    if(!value.contains(RegExp(r'[A-Z]'))){
      return "Password must contains at least one uppercase letter";
    }
// check for number

    if(!value.contains(RegExp(r'[0-9]'))){
      return "Password must contains at least one number";
    }
    // check for special character
    if(!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>~\[\]\\\/+=_;-]'))){
      return "Password must contains at least one special character";

    }
    return null;
  }

  static String? validatePhoneNumber(String? value){

    if(value==null||value.isEmpty){
      return 'Phone number is required';
    }

    final phoneRegExp=RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return'Invalid phone number format(10 digits required). ';
    }
    return null;

  }
}