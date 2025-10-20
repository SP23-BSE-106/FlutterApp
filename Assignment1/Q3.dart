void main() {
  Map<int, String> map1 = {1: 'One', 2: 'Two', 3: 'Three'};
  Map<int, String> map2 = {4: 'Four', 5: 'Five'};

  print("Original Map 1: $map1");
  print("Original Map 2: $map2");

  map1.addAll(map2);

  print("Merged Map: $map1");

  Map<int, String> map3 = {1: 'First', 2: 'Second'};
  Map<int, String> map4 = {2: 'Duplicate', 3: 'Third'};
  map3.addAll(map4);
  print("Merged Map with Overlapping Keys: $map3");
}
