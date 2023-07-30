import 'package:new_project/app/data/constants/app_assets.dart';

class TravelPackageModel {
  final String title;
  final String subtitle;
  final String image;
  final String rating;
  final String price;

  const TravelPackageModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.price,
  });
}

List myTravelPackageList = [
  TravelPackageModel(
    image: AppAssets.kFlamingo,
    title: "Flamingo",
    subtitle: "South Africa",
    rating: "4.5",
    price: "\$250",
  ),
  TravelPackageModel(
    image: AppAssets.kCamel,
    title: "Mesir",
    subtitle: "Piramida, Kairo",
    rating: "4.5",
    price: "\$190",
  ),
  TravelPackageModel(
    image: AppAssets.kRiver,
    title: "Nile River",
    subtitle: "Africa",
    rating: "4.9",
    price: "\$230",
  ),
  TravelPackageModel(
    image: AppAssets.kPenguins,
    title: "Pyramids",
    subtitle: "Africa",
    rating: "4.7",
    price: "\$175",
  ),
  TravelPackageModel(
    image: AppAssets.kZebra,
    title: "Streets",
    subtitle: "Kairo",
    rating: "4.3",
    price: "\$210",
  ),
];
