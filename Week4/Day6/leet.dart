void main() {
  List<int> nums1 = [1,2,2,1];
  List<int> nums2 = [2,2];
  List<int> big = [];
  List<int> small = [];

  if (nums1.length > nums2.length) {
    big = nums1;
    small = nums2;
  } else {
    small = nums1;
    big = nums2;
  }
  List<int> ans = [];
  //big = [9,4,9,8,4] small = [4,9,5]
  Map<int, int> map = {};
  for (int i = 0; i < big.length; i++) {
    if (map.containsKey(big[i])) {
      map[big[i]] = map[big[i]]! + 1;
    } else {
      map[big[i]] = 1;
    }
  }
  for (int i = 0; i < small.length; i++) {
    if (map.containsKey(small[i]) && map[small[i]]! > 0) {
      ans.add(small[i]);
      map[small[i]] = map[small[i]]! - 1;
    }
  }
  print(ans);
}
