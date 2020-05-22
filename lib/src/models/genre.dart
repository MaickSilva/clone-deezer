class DataGenre {
  List<Data> data;

  DataGenre({this.data});

  DataGenre.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String name;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  String type;

  Data({
    this.id,
    this.name,
    this.picture,
    this.pictureSmall,
    this.pictureMedium,
    this.pictureBig,
    this.pictureXl,
    this.type,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['picture'] = this.picture;
    data['picture_small'] = this.pictureSmall;
    data['picture_medium'] = this.pictureMedium;
    data['picture_big'] = this.pictureBig;
    data['picture_xl'] = this.pictureXl;
    data['type'] = this.type;
    return data;
  }
}
