class DoctorModel{
  DoctorModel({
    required this.imagePath,
    required this.isTopRated,
    required this.isFavorite,
    required this.name,
    required this.specialization,
    required this.location,
    required this.rating,
    required this.numberOfSessions,
  });

  final String imagePath;
  final bool isTopRated;
  final bool isFavorite;
  final String name;
  final String specialization;
  final String location;
  final double rating;
  final int numberOfSessions;
}

List<DoctorModel> doctorList = [
  DoctorModel(
      imagePath: 'assets/images/tomi_two_image.png',
      isTopRated: true,
      isFavorite: true,
      name: 'Dr Kingsley Bourne',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/tomi_two_image.png',
      isTopRated: false,
      isFavorite: true,
      name: 'Dr Tomilayo Asake',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/tomi_two_image.png',
      isTopRated: true,
      isFavorite: false,
      name: 'Dr John Bruce',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/tomi_two_image.png',
      isTopRated: false,
      isFavorite: false,
      name: 'Dr Sarah Connor',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/tomi_two_image.png',
      isTopRated: true,
      isFavorite: true,
      name: 'Dr Kingsley Bourne',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/tomi_two_image.png',
      isTopRated: false,
      isFavorite: true,
      name: 'Dr Tomilayo Asake',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
];