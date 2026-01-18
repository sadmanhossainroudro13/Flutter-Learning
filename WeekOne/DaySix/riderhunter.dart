Future<String> findRider(String location) async {
  await Future.delayed(Duration(seconds: 3));

  if (location == "Dhanmondi") {
    return "Rider Found! 5 mins away.";
  } else if (location == "Uttara") {
    throw Exception("No Rider Available in Uttara!");
  } else {
    return "Searching on Map";
  }
}

void main() async {
  print('Ride Request sent..');

  try {
    print("Search 1 is on Dhanmondi..");
    String search = await findRider("Dhanmondi");
    print(search);
  } catch (e) {
    print(e);
  }

  try {
    print("Search 2 is on Uttara..");
    String search2 = await findRider("Uttara");
    print(search2);
  } catch (e) {
    print(e);
  }

  try {
    print("Search 3 is on Mirpur..");
    String search3 = await findRider("Mirpur");
    print(search3);
  } catch (e) {
    print(e);
  }
}
