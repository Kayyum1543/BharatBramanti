

import 'package:bharat/BrainBox/models/tile.dart';
import 'package:bharat/BrainBox/utils/constants/strings.dart';

int viewPoints = 0;
int totalPoints = 0;
int flipCount = 30;
bool allowClick = false;
String hideImagePath = Strings.question_img_path;
String selectedImagePath = "";
int selectedImageIndex;
String theme = "";
List<TileModel> pairs = [];

void hideAllPairs(List<TileModel> visibleList) {
  for (int i = 0; i < visibleList.length; i++) {
    visibleList[i].setIsSelected(false);
  }
}


// Indian Food - Yummy Feast
List<TileModel> getIndiaFoodPairs() {
  List<TileModel> pairs = [];
  List<String> imgNames = [
    "Dal_Baati_Churma",
    "Dhokla",
    "Fish_Curry",
    "Kabab",
    "Misa_Mash_Poora",
    "Misal_Pav",
    "Momos",
    "Pongal"
  ];
  for (int i = 0; i < imgNames.length; i++) {
    TileModel cardCopy1 = TileModel();
    cardCopy1.setImagePath(Strings.india_food_img_dir_path + imgNames[i] + ".jpg");
    cardCopy1.setIsSelected(true);
    cardCopy1.setIsMatched(false);
    pairs.add(cardCopy1);
    TileModel cardCopy2 = TileModel();
    cardCopy2.setImagePath(Strings.india_food_img_dir_path + imgNames[i] + ".jpg");
    cardCopy2.setIsSelected(true);
    cardCopy2.setIsMatched(false);
    pairs.add(cardCopy2);
  }
  return pairs;
}

// Indian Traditional Wear - Desh Rangila
List<TileModel> getTradWearPairs() {
  List<TileModel> pairs = [];
  List<String> imgNames = [
    "keralaM_1",
    "keralaF_1",
    "goaM_2",
    "goaF_2",
    "rajsthanM_3",
    "rajsthanF_3",
    "mizoramM_4",
    "mizoramF_4",
    "jammuM_5",
    "jammuF_5",
    "westbengalM_6",
    "westbengalF_6",
    "maharashtraM_7",
    "maharashtraF_7",
    "haryanaM_8",
    "haryanaF_8",
  ];
  for (int i = 0; i < imgNames.length; i++) {
    TileModel cardCopy1 = TileModel();
    cardCopy1.setImagePath(Strings.trad_wear_img_dir_path + imgNames[i] + ".PNG");
    cardCopy1.setIsSelected(true);
    cardCopy1.setIsMatched(false);
    pairs.add(cardCopy1);
  }
  return pairs;
}

// Indian Historic places - Bharat Safar
List<TileModel> getIndiaTravelPairs() {
  List<TileModel> pairs = [];
  List<String> imgNames = [
    "gateway_mumbai",
    "goldenTemple",
    "halebidu",
    "hawaMahal",
    "khajuraho",
    "mysorePalace",
    "qutub_minar",
    "tajmahal"
  ];
  for (int i = 0; i < imgNames.length; i++) {
    TileModel cardCopy1 = TileModel();
    cardCopy1.setImagePath(Strings.india_travel_img_dir_path + imgNames[i] + ".jpg");
    //String url=Strings.india_travel_img_dir_path + imgNames[i] + ".jpg";
    //cardCopy1.setImagePath(Image.network(url));
    cardCopy1.setIsSelected(true);
    cardCopy1.setIsMatched(false);
    pairs.add(cardCopy1);
    TileModel cardCopy2 = TileModel();
    cardCopy2.setImagePath(Strings.india_travel_img_dir_path + imgNames[i] + ".jpg");
    cardCopy2.setIsSelected(true);
    cardCopy2.setIsMatched(false);
    pairs.add(cardCopy2);
  }
  return pairs;
}

// Maharashtrian Food - Maharashtrian mejawani
List<TileModel> getMhFoodPairs() {
  List<TileModel> pairs = [];
  List<String> imgNames = [
    "basundi",
    "laadu",
    "mh_Thali",
    "misal_pav",
    "modak",
    "pedha",
    "vada_pav",
    "zunka_bhakari"
  ];
  for (int i = 0; i < imgNames.length; i++) {
    TileModel cardCopy1 = TileModel();
    cardCopy1.setImagePath(Strings.mh_food_img_dir_path + imgNames[i] + ".jpg");
    cardCopy1.setIsSelected(true);
    cardCopy1.setIsMatched(false);
    pairs.add(cardCopy1);
    TileModel cardCopy2 = TileModel();
    cardCopy2.setImagePath(Strings.mh_food_img_dir_path + imgNames[i] + ".jpg");
    cardCopy2.setIsSelected(true);
    cardCopy2.setIsMatched(false);
    pairs.add(cardCopy2);
  }
  return pairs;
}
