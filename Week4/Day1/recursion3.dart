void recurtionLimit(int limit) {
  limit++;
  try {
    recurtionLimit(limit);
  } catch (e) {
    print("Error!! Limit is: $limit");
  }
}
void main() {
  int limit = 0;
  recurtionLimit(limit);
}