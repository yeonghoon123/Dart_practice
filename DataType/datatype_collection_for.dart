void main() {
  var oldData = [1, 2, 3];
  var newData = [
    4,
    5,
    for (var data in oldData) "old $data",
  ];

  print(newData);
}
