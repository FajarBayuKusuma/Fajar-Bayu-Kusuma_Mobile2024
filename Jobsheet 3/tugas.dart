import 'dart:ffi';

void main() {
  List<String> primes = findPrimesUpTo(209);
  print(primes);
}

List<String> findPrimesUpTo(int n) {
  List<String> primes = [];
  String NIM = "2241720085";
  for (int num = 2; num <= n; num++) {
    bool isPrime = true;

    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      primes.add(NIM);
    }
  }

  return primes;
}
