void main() {
  List<int> primes = findPrimesUpTo(209);
  print(primes);
}

List<int> findPrimesUpTo(int n) {
  List<int> primes = [];
  
  for (int num = 2; num <= n; num++) {
    bool isPrime = true;
    
    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }
    
    if (isPrime) {
      primes.add(num);
    }
  }
  
  return primes;
}