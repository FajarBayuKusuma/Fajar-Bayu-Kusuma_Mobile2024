void main(List<String> args) {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);

  List<String?> listA = List<String?>.filled(5, null); // Membuat list dengan 5 elemen yang nilainya null
  listA[0] = 'Fajar Bayu Kusuma'; //indeks pertama dengan nama
  listA[1] = '2241720085'; //indeks kedua dengan NIM

  print(listA);
}
