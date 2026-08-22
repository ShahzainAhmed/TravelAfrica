import 'package:flutter/material.dart';
import 'package:new_project/app/data/constants/app_assets.dart';
import 'package:new_project/app/data/constants/app_colors.dart';

class TravelPackageModel {
  final String title;
  final String subtitle;
  final String image;
  final String rating;
  final String price;
  final String description;
  final String packageDetails;
  final Color imageColors;

  const TravelPackageModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.price,
    required this.description,
    required this.packageDetails,
    required this.imageColors,
  });
}

List<TravelPackageModel> myTravelPackageList = [
  TravelPackageModel(
    image: AppAssets.kFlamingo,
    title: "Flamingo",
    subtitle: "South Africa",
    rating: "4.5",
    price: "\$250",
    packageDetails: "Africa Travel  |  7 Days & Nights  |  5 Star Hotel",
    description:
        "Discover the beautiful flamingos of South Africa and enjoy breathtaking views of nature and wildlife. Explore peaceful lakes, stunning landscapes, and experience the beauty of the African wilderness. This trip is perfect for wildlife lovers, photographers, and travelers looking for an unforgettable adventure.",
    imageColors: AppColors.kFlamingoColor,
  ),
  TravelPackageModel(
    image: AppAssets.kCamel,
    title: "Mesir",
    subtitle: "Piramida, Kairo",
    rating: "4.5",
    price: "\$190",
    packageDetails: "Egypt Travel  |  5 Days & Nights  |  4 Star Hotel",
    description:
        "Explore the magnificent pyramids of Cairo and discover the fascinating history of ancient Egypt. Visit historic landmarks, experience local culture, explore traditional markets, and enjoy authentic Egyptian cuisine while discovering one of the world's most remarkable destinations.",
    imageColors: AppColors.kCamelColor,
  ),
  TravelPackageModel(
    image: AppAssets.kRiver,
    title: "Nile River",
    subtitle: "Africa",
    rating: "4.9",
    price: "\$230",
    packageDetails: "Nile Adventure  |  6 Days & Nights  |  5 Star Hotel",
    description:
        "Experience the timeless beauty of the Nile River with stunning scenery, historic landmarks, and local culture. Enjoy peaceful views, discover traditional villages, and experience unforgettable sunsets while exploring one of Africa's most famous and beautiful destinations.",
    imageColors: AppColors.kRiverColor,
  ),
  TravelPackageModel(
    image: AppAssets.kPenguins,
    title: "Pyramids",
    subtitle: "Africa",
    rating: "4.7",
    price: "\$175",
    packageDetails: "Ancient Egypt  |  5 Days & Nights  |  4 Star Hotel",
    description:
        "Visit the incredible pyramids and discover the ancient history behind these remarkable landmarks. Explore historic sites, learn about ancient civilizations, experience local culture, and enjoy an unforgettable journey filled with history, adventure, and beautiful scenery.",
    imageColors: AppColors.kPenguinsColor,
  ),
  TravelPackageModel(
    image: AppAssets.kZebra,
    title: "Streets",
    subtitle: "Kairo",
    rating: "4.3",
    price: "\$210",
    packageDetails: "Cairo Experience  |  4 Days & Nights  |  4 Star Hotel",
    description:
        "Explore the vibrant streets of Cairo and experience its unique culture, traditional architecture, colorful markets, and local cuisine. Discover hidden corners of the city, meet friendly locals, and enjoy the lively atmosphere that makes Cairo such a memorable destination.",
    imageColors: AppColors.kZebraColor,
  ),
];
