void main() {
  List<String> shoppingList = ['Հաց', 'Կաթ', 'Պանիր'];
  print('Սկզբնական ցուցակ: $shoppingList');

  // 1. 
  shoppingList.add('Ձու');
  print('Վերջում ավելացնելուց հետո: $shoppingList');

  // 2. 
  shoppingList.insert(1, 'Յուղ');
  print('1-ին ինդեքսում ավելացնելուց հետո: $shoppingList');

  // 3. 
  String removed = shoppingList.removeAt(2);
  print('Հեռացվեց "$removed", ցուցակը՝ $shoppingList');

  // 4. 
  shoppingList[0] = 'Լավաշ';
  print('0-ական դիրքը փոխարինելուց հետո: $shoppingList');

  // 5. 
  if (shoppingList.isNotEmpty) {
    print('Առաջին ապրանքը: ${shoppingList.first}');
    print('Վերջին ապրանքը: ${shoppingList.last}');
  }

  // 6.
  if (shoppingList.isEmpty) {
    print('Ցուցակը դատարկ է');
  } else {
    print('Ցուցակը դատարկ չէ (ապրանքների քանակը՝ ${shoppingList.length})');
  }


  print('Վերջնական գնումների ցուցակ: $shoppingList');
}