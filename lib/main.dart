// trs , bly
void main() {
  Machine trs = Machine(id: 1, name: 'Trs');
  print(trs.id);
  print(trs.name);
  print(trs.use);

  print('======================');

  Fan bly = Fan(name: "Bly", id: 2);
  print(bly.id);
  print(bly.name);
  print(bly.use);
}

class Products {
  int id;
  String name;

  Products({required this.id, required this.name});
}

class Machine extends Products {
  String use = 'in machine';

  Machine({required int id, required String name}) : super(id: id, name: name);
  // or
  // Machine({required super.id, required super.name});
}

class Fan extends Products {
  String use = 'in Fan';

  Fan({required super.id, required super.name});

  //or
  // Fan({required int id, required String name}) : super(id: id, name: name);
}
