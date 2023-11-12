import 'package:explore_app/models/models.dart';
import 'package:flutter/material.dart';

final List<CountryDetails> countryInformation = [
  CountryDetails(
      countryName: "Afghanistan",
      countryCapital: "Kabul",
      countryFlag: "assets/images/afghanistan.png"),
  CountryDetails(
      countryName: "Albania",
      countryCapital: "Tirana",
      countryFlag: "assets/images/albania.png"),
  CountryDetails(
      countryName: "Algeria",
      countryCapital: "Algiers",
      countryFlag: "assets/images/algeria.png"),
  CountryDetails(
      countryName: "Andorra",
      countryCapital: "Andorra la Vella",
      countryFlag: "assets/images/andorra.png"),
  CountryDetails(
      countryName: "Angola",
      countryCapital: "Luanda",
      countryFlag: "assets/images/angola.png"),
  CountryDetails(
      countryName: "Antigua and Barbuda",
      countryCapital: "St. John's",
      countryFlag: "assets/images/antigua.png"),
  CountryDetails(
      countryName: "Argentina",
      countryCapital: "Buenos Aires",
      countryFlag: "assets/images/argentina.png"),
  CountryDetails(
      countryName: "Armenia",
      countryCapital: "Yerevan",
      countryFlag: "assets/images/armenia.png"),
  CountryDetails(
      countryName: "Australia",
      countryCapital: "Canberra",
      countryFlag: "assets/images/australia.png"),
  CountryDetails(
      countryName: "Austria",
      countryCapital: "Vienna",
      countryFlag: "assets/images/austria.png"),
  CountryDetails(
      countryName: "Azerbaijan",
      countryCapital: "Baku",
      countryFlag: "assets/images/azerbaijan.png"),
  CountryDetails(
      countryName: "Bahamas",
      countryCapital: "Nassau",
      countryFlag: "assets/images/bahamas.png"),
  CountryDetails(
      countryName: "Bahrain",
      countryCapital: "Manama",
      countryFlag: "assets/images/bahrain.png"),
  CountryDetails(
      countryName: "Bangladesh",
      countryCapital: "Dhaka",
      countryFlag: "assets/images/banglades.png"),
  CountryDetails(
      countryName: "Barbados",
      countryCapital: "Bridgetown",
      countryFlag: "assets/images/barbados.png"),
  CountryDetails(
      countryName: "Belarus",
      countryCapital: "Minsk",
      countryFlag: "assets/images/belarus.png"),
  CountryDetails(
      countryName: "Belgium",
      countryCapital: "Brussels",
      countryFlag: "assets/images/belgium.png"),
];

final List<String> languagesList = [
  "Bahasa",
  "Deutsch",
  "English",
  "Español",
  "Française",
  "Italiano",
  "Português",
  "Pу́сский",
  "Svenska",
  "Türkçe",
  "普通话",
  "بالعربية",
  "বাঙ্গালী"
];

final List<String> continentsList = [
  "Africa",
  "Antarctica",
  "Asia",
  "Australia",
  "Europe",
  "North America",
  "South America"
];

final List<String> timeList = [
  "GMT+1:00",
  "GMT+2:00",
  "GMT+3:00",
  "GMT+4:00",
  "GMT+5:00",
  "GMT+6:00",
  "GMT+7:00",
  "GMT-6:00",
];

final List<int> checkBox1 = [];
final List<int> checkBox2 = [];

final List carousel = [
  "assets/images/afghanistan.png",
  "assets/images/afghanista-emblem.png",
  "assets/images/afghanistan-map.png"
];

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.white : Colors.grey.shade400,
          shape: BoxShape.circle),
    );
  });
}
