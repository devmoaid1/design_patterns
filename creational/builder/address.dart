class Address {
  final int id;
  final String streetName;
  final String buildNo;

  Address({required this.id, required this.streetName, required this.buildNo});

  @override
  String toString() {
    return 'Address { id: $id, streetName: $streetName, buildNo: $buildNo }';
  }
}
