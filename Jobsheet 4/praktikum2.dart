void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};
Set<String> names2 = {};
names1.add('Fajar Bayu Kusuma');
names2.add('NIM 2241720085');
names1.addAll(halogens); // Pastikan 'halogens' sudah didefinisikan sebelumnya.
print(names1);
print(names2);
}