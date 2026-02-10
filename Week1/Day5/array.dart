void main() {
  var nums1 = [4,5,6, 0, 0, 0];
  var m = 3;
  var nums2 = [1,2,3];
  var n = 3;

  var p1 = m - 1;
  var p2 = n - 1;
  var p = m + n - 1;

  while (p2 >= 0) {
    if (p1 >= 0 && nums1[p1] > nums2[p2]) {
      nums1[p] = nums1[p1];
      p1--;
    } else{
      nums1[p] = nums2[p2];
      p2--;
    }
    p--;
  }
  print(nums1);
}
