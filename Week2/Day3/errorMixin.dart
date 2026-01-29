mixin Error {
  void checkStatus(int statusCode) {
    if (statusCode == 200) {
      print("Unsuccessful connecction");
    } else if (statusCode == 404) {
      print("Page not Found");
    } else if (statusCode == 504) {
      print("Server down");
    }
  }
}

class Connection with Error {
  void fetchConnection(int code) {
    print("Fetching Connection...");
    checkStatus(code);
  }
}

class PageFind with Error {
  void fetchPage(int code) {
    print("Page is found or not?");
    checkStatus(code);
  }
}

class ServerStatus with Error {
  void server(int code) {
    print("Checking Server");
    checkStatus(code);
  }
}

void main() {
  ServerStatus status = ServerStatus();
  status.server(5004);
}
