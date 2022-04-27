class Address {
  final String label;
  final String completeAddress;

  Address({
    required this.label,
    required this.completeAddress,
  });
}

List<Address> recentPlacesList = [
  Address(
    label: 'Airway supermarket',
    completeAddress: '4959 Fannie  Street, Bay City, Tx 77414',
  ),
  Address(
    label: 'Domino\'s pizza',
    completeAddress: '582 Spirit Drive, Bay City, Tx 77414',
  )
];
