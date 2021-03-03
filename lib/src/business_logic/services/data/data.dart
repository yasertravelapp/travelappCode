import 'package:travel_app/src/business_logic/models/category.dart';
import 'package:travel_app/src/business_logic/models/popular_attraction.dart';
import 'package:travel_app/src/business_logic/models/user.dart';
import 'package:travel_app/src/business_logic/utils/appStrings.dart';
import 'package:travel_app/src/business_logic/utils/icons_strings.dart';
import 'package:travel_app/src/business_logic/utils/image_strings.dart';

final _hotels = Category(
  imageUrl: MyIconsStrings.hotel,
  name: MyAppStrings.hotels,
);

final _flights = Category(
  imageUrl: MyIconsStrings.plain,
  name: MyAppStrings.flights,
);

final _trains = Category(
  imageUrl: MyIconsStrings.train,
  name: MyAppStrings.trains,
);

final List<Category> categoryList = [
  _hotels,
  _flights,
  _trains,
  _hotels,
  _flights,
  _trains
];

final _dubaiMusem = PopularAttraction(
  imageUrl: MyImagesStrings.dubai,
  name: MyAppStrings.dubaiMuseum,
  user: _beatriceKim,
);

final _burjKhalifa = PopularAttraction(
  imageUrl: MyImagesStrings.burjKhalifa,
  name: MyAppStrings.burjKhalifa,
  user: _christianHolmes
);

final _mosque = PopularAttraction(
  imageUrl: MyImagesStrings.mosque,
  name: MyAppStrings.temple,
  user: _saraDelgado
);

final List<PopularAttraction> popularAttList = [
  _dubaiMusem,
  _burjKhalifa,
  _mosque
];

final _beatriceKim = User(
    userImage: MyImagesStrings.user1,
    name: 'Beatrice Kim',
    invalidName: MyAppStrings.invalidDate,
    views: "4,060",
    likes: "216");

final _christianHolmes = User(
    userImage: MyImagesStrings.user3,
    name: 'Christian Holmes',
    invalidName: MyAppStrings.invalidDate,
    views: "4,060",
    likes: "216");

final _saraDelgado = User(
    userImage: MyImagesStrings.user2,
    name: 'Sarah Delgado',
    invalidName: MyAppStrings.invalidDate,
    views: "4,060",
    likes: "216");

final List<User> users = [_beatriceKim, _christianHolmes, _saraDelgado];
