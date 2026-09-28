class Playable {
  void play() {}
}

class Football implements Playable {
  @override
  void play() => print('Playing Football with 11 players.');
}

class Cricket implements Playable {
  @override
  void play() => print('Playing Cricket with bat and ball.');
}

void main() {
  List<Playable> games = [Football(), Cricket()];
  for (var g in games) {
    g.play();
  }
}