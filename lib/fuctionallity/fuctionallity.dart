class AppBrain {
  final List types = [
    ['All', true],
    ['Apartment', false],
    ['Villa', false],
    ['Tower', false],
    ['Single', false],
  ];
  final List bedrooms = [
    ['Any', true],
    ['1', false],
    ['2', false],
    ['3', false],
    ['4', false],
  ];
  final List bedroom = [
    ['Any', true],
    ['1', false],
    ['2', false],
    ['3', false],
    ['4', false],
  ];
  void ChangeType(int index) {
    for (int i = 0; i < types.length; i++) {
      types[i][1] = false;
    }
    types[index][1] = true;
  }

  void bedRooms(int index) {
    for (int i = 0; i < bedrooms.length; i++) {
      bedrooms[i][1] = false;
    }
    bedrooms[index][1] = true;
  }

  void bedRoom(int index) {
    for (int i = 0; i < bedroom.length; i++) {
      bedroom[i][1] = false;
    }
    bedroom[index][1] = true;
  }
}
