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
      name: 'Dr Oluwatomi Ogundijo' ,
      specialization: 'Cardiologist',
      location: 'UK',
      rating: 4.0 ,
      numberOfSessions: 68),
  DoctorModel(
      imagePath: 'assets/images/doctor_image_one.png',
      isTopRated: false,
      isFavorite: true,
      name: 'Dr Osezele Iboi',
      specialization: 'Paeditrician',
      location: 'Nigeria',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/doctor_image_two.png',
      isTopRated: true,
      isFavorite: false,
      name: 'Dr John Bruce',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions:3),
  DoctorModel(
      imagePath: 'assets/images/doctor_image_three.png',
      isTopRated: false,
      isFavorite: false,
      name: 'Dr Blessing Cliff',
      specialization: 'Gynecologist',
      location: 'Germany',
      rating: 4.0,
      numberOfSessions: 68),
  DoctorModel(
      imagePath: 'assets/images/doctor_image_four.png',
      isTopRated: true,
      isFavorite: true,
      name: 'Dr Rukayat Salaudeen',
      specialization: 'Mental Health',
      location: 'Nigeria',
      rating: 4.0,
      numberOfSessions: 50),
  DoctorModel(
      imagePath: 'assets/images/doctor_image_five.png',
      isTopRated: false,
      isFavorite: true,
      name: 'Dr Tomilayo Asake',
      specialization: 'Neurologist',
      location: 'Japan',
      rating: 4.0,
      numberOfSessions: 50),
];