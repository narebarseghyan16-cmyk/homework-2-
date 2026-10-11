void main() async {
  final stopwatch = Stopwatch()..start();

  List<String> results = await runTasks();
  results.forEach(print);

  stopwatch.stop();
  print('Ընդհանուր ժամանակը՝ ~${stopwatch.elapsedMilliseconds} ms');
}


Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return 'Task $name completed';
}

Future<List<String>> runTasks() async {
  // Երեք Future-ները ստեղծվում են միաժամանակ (await-ից առաջ)
  final results = await Future.wait([
    runTask('A', 100),
    runTask('B', 50),
    runTask('C', 150),
  ]);
  return results;
}

