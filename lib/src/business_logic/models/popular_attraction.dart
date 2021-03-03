import 'package:travel_app/src/business_logic/models/user.dart';

class PopularAttraction {
  final String imageUrl;
  final String name;
  final User user;

  PopularAttraction({
    this.imageUrl,
    this.name,
    this.user,
  });
}
