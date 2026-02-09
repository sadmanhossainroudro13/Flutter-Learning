Future<String> downloadFiles() async {
  print("Doenload has Started.....");

  await Future.delayed(Duration(seconds: 3));

  return "DownloadedFile.pdf";
}

void main() async {
  print("App has Started...");

  String file = await downloadFiles();

  print("Download has completed : $file");
  print("App Closed");
}
