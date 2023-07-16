Future<List<String>> helloFutureDemo() async {
  final list = ["Delhi", "Calcutta", "chennai"];
  await Future.delayed(const Duration(seconds: 2));

  return list;
}
