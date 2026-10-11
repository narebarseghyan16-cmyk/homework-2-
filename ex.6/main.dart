void main() async {
  print('safeGetNumber(5)  -> ${await safeGetNumber(5)}');
  print('safeGetNumber(0)  -> ${await safeGetNumber(0)}');
  print('safeGetNumber(-3) -> ${await safeGetNumber(-3)}');
}

Future<int> getNumber(int value) async {
  if (value > 0) {
    await Future.delayed(Duration(milliseconds: 100));
    return value;
  } else {
    throw Exception('Արժեքը պետք է լինի դրական, ստացվեց՝ $value');
  }
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    print('Սխալ: $e');
    return 0;
  }
}

