void main(){
  final list1 = [1,2,3];
  final list2 = [1,2,3];

  print(identical(list1, list2));

  const listA = [2,3,4];
  const listB = [2,3,4];

  print(identical(listA, listB));
}