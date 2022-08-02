void main(List<String> args) {
  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  for (int i = 0; i <= 20; i++) {
    var result = fibonacci(i);
    print(result);
  }
}
