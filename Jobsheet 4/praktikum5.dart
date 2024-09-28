(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  var hasil = tukar((2, 3));
  print(hasil);

    // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Fajar Bayu Kusuma', 2241720085);
  print(mahasiswa);

  //Langkah 5
  var mahasiswa2 = ('Fajar Bayu Kusuma', a: 2241720085, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
