extension ConvertBangla on String {
  String convertBangla() {
    const English = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const Bangla = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];

    String input = this;
    for (int i = 0; i < English.length; i++) {
      input = input.replaceAll(English[i], Bangla[i]);
    }
    return input;
  }
}

extension Timedelay on int {
  String timeAgo() {
    int seconds = this;
    int timeDelay;
    if (seconds <= 60) {
      return "Just Now";
    } else {
      var minutes = seconds ~/ 60;
      return "$minutes minutes ago";
    }
  }
}

void main() {
  String numEng = "123678687678";
  print(numEng.convertBangla());

  int time = 3600;
  print(time.timeAgo());
}
