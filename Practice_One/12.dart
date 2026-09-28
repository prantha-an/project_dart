
void main() {
  double distance = 25;
  double speed = 40;
  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;

  print("Distance: $distance km");
  print("Speed: $speed km/h");
  print("Time taken: $timeInMinutes minutes");
}