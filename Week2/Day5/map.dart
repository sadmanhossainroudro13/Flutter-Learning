void main() {
  Map<String, int> gradeBook = {'Rahim': 80, 'Karim': 90, 'Sumon': 75};

  gradeBook['Rahim'] = 85;
  gradeBook.remove('Karim');

  if (!gradeBook.containsKey('Sogir')) {
    print('Student Not found');
  }

  print(gradeBook);
}
