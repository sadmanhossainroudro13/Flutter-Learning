abstract class Building {
  void structure() {
    print("Building Structure is build");
  }

  void roof();
}

class Development extends Building {
  void roof() {
    print("Development team will do the work for Roof...");
  }
}


void main() {
  var work = Development();

  work.structure();
  work.roof();
}
