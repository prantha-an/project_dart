T findLargest<T extends num>(T a, T b) => (a > b) ? a : b;

void main() {
  print('Largest: ${findLargest<int>(10, 25)}');
  print('Largest: ${findLargest<double>(7.5, 3.2)}');
}