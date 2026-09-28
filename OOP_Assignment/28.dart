class Guest {
  String name;
  String phone;
  Guest(this.name, this.phone);
}

class Room {
  int roomNo;
  String type;
  double pricePerNight;
  bool isBooked = false;

  Room(this.roomNo, this.type, this.pricePerNight);
}

class Reservation {
  Guest guest;
  Room room;
  int nights;

  Reservation(this.guest, this.room, this.nights) {
    room.isBooked = true;
  }

  double totalBill() => room.pricePerNight * nights;

  void display() {
    print('--- Reservation ---');
    print('Guest : ${guest.name} (${guest.phone})');
    print('Room  : ${room.roomNo} [${room.type}]');
    print('Nights: $nights');
    print('Total : ${totalBill().toStringAsFixed(2)} BDT');
  }
}

void main() {
  Guest g = Guest('Prantha', '01700000000');
  Room r = Room(203, 'Deluxe', 3500);

  print('Room ${r.roomNo} booked? ${r.isBooked}');

  Reservation res = Reservation(g, r, 3);
  res.display();

  print('Room ${r.roomNo} booked? ${r.isBooked}');
}