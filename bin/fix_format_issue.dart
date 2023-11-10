void foo(String one, String two) {
  print(one + two);
}

void main(List<String> arguments) {
  // 1. dart fix --apply is initially OK with this long line
  // 2. dart format --fix splits the line but does not insert the trailing comma
  // 3. dart fix --apply adds the trailing comma but leaves the trailing bracket
  // 4. dart format --fix splits the trailing bracket to a separate line
  foo('this is a very very very very very very long string', 'this is another very very very very very very long string');
}
