import 'dart:io';

abstract class Storage {
  void read();
  void save(String info);
}

class FileStorage implements Storage {
  File myFile;
  FileStorage(this.myFile);
  //Saves in File
  @override
  void read() async {
    String content = await myFile.readAsString();
    print("File Content: $content");
  }

  void save(String info) async {
    await myFile.writeAsString(info, mode: FileMode.append);
    print("File Saved successfully : $info");
  }
}

class RamStorage implements Storage {
  List<String> lst = [];
  //Saves in List
  @override
  void read() {
    print(lst);
  }

  void save(String info) {
    lst.add(info);
  }
}

class SaveFile {
  Storage storageType;
  SaveFile(this.storageType);

  void doSave(String info) {
    storageType.save(info);
  }

  void doRead() {
    storageType.read();
  }
}

void main() {
  SaveFile ramSaver = SaveFile(RamStorage());
  ramSaver.doSave("This is Saved on Ram");
  ramSaver.doRead();

  SaveFile fileSaver = SaveFile(FileStorage(File('myFile.txt')));

  fileSaver.doSave("THis is Saved on File");
  fileSaver.doRead();
}
