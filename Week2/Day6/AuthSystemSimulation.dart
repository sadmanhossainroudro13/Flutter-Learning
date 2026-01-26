import 'dart:io';

class PassLenException implements Exception {
  String message;
  PassLenException(this.message);

  String toString() {
    return "Not valid Password: $message";
  }
}

class UserNameException implements Exception {
  String message;
  UserNameException(this.message);

  String toString() {
    return "User name not valid: $message";
  }
}

class EmptyException implements Exception {
  String message;
  EmptyException(this.message);

  String toString() {
    return "Input Error: $message";
  }
}

class Database {
  String name;
  String pass;
  Database(this.name, this.pass);

  Map<String, String> database = {
    'Rahim': '123456',
    'karim': 'karim123',
    "Roudro": 'Roudro234',
  };

  String verification() {
    if (!database.containsKey(name)) {
      throw UserNameException("Username not found!");
    }

    if (pass.length < 6) {
      throw PassLenException("Password must be at least 5 character.");
    }

    if (database[name] == pass) {
      return "Login successfull";
    } else {
      return "Wrong Password";
    }
  }
}

void main() {
  print("Enter your login information:");

  print('Enter your Username: ');
  String? userName = stdin.readLineSync();

  print('Enter your password: ');
  String? password = stdin.readLineSync();
  try {
    if (userName!.isEmpty || password!.isEmpty) {
      throw EmptyException("Username and Password cannot be empty!");
    }

    Database check = Database(userName, password);
    print(check.verification());
  } on EmptyException catch (e) {
    print(e.toString());
  } on PassLenException catch (e) {
    print(e.toString());
  } on UserNameException catch (e) {
    print(e.toString());
  } catch (e) {
    print('other Error!');
  }
}
