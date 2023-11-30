String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

void main() {
  String? name;
  name ??= 'kyh';

  print(capitalizeName(name));

  name = null;
  print(capitalizeName(name));
}
