class MusicFlow {
  List<Data> data;

  MusicFlow({this.data});

  MusicFlow.fromJson(Map<String, dynamic> json) {
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
  int id;
  bool readable;
  String title;
  String titleShort;
  String titleVersion;
  int duration;
  int rank;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  String preview;
  Artist artist;
  Album album;
  String type;

  Data({
    this.id,
    this.readable,
    this.title,
    this.titleShort,
    this.titleVersion,
    this.duration,
    this.rank,
    this.explicitLyrics,
    this.explicitContentLyrics,
    this.explicitContentCover,
    this.preview,
    this.artist,
    this.album,
    this.type,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    readable = json['readable'];
    title = json['title'];
    titleShort = json['title_short'];
    titleVersion = json['title_version'];
    duration = json['duration'];
    rank = json['rank'];
    explicitLyrics = json['explicit_lyrics'];
    explicitContentLyrics = json['explicit_content_lyrics'];
    explicitContentCover = json['explicit_content_cover'];
    preview = json['preview'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    album = json['album'] != null ? new Album.fromJson(json['album']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['readable'] = this.readable;
    data['title'] = this.title;
    data['title_short'] = this.titleShort;
    data['title_version'] = this.titleVersion;
    data['duration'] = this.duration;
    data['rank'] = this.rank;
    data['explicit_lyrics'] = this.explicitLyrics;
    data['explicit_content_lyrics'] = this.explicitContentLyrics;
    data['explicit_content_cover'] = this.explicitContentCover;
    data['preview'] = this.preview;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.album != null) {
      data['album'] = this.album.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}

class Artist {
  int id;
  String name;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  String tracklist;
  String type;

  Artist({
    this.id,
    this.name,
    this.picture,
    this.pictureSmall,
    this.pictureMedium,
    this.pictureBig,
    this.pictureXl,
    this.tracklist,
    this.type,
  });

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    tracklist = json['tracklist'];
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
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}

class Album {
  int id;
  String title;
  String cover;
  String coverSmall;
  String coverMedium;
  String coverBig;
  String coverXl;
  String tracklist;
  String type;

  Album({
    this.id,
    this.title,
    this.cover,
    this.coverSmall,
    this.coverMedium,
    this.coverBig,
    this.coverXl,
    this.tracklist,
    this.type,
  });

  Album.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    cover = json['cover'];
    coverSmall = json['cover_small'];
    coverMedium = json['cover_medium'];
    coverBig = json['cover_big'];
    coverXl = json['cover_xl'];
    tracklist = json['tracklist'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['cover_small'] = this.coverSmall;
    data['cover_medium'] = this.coverMedium;
    data['cover_big'] = this.coverBig;
    data['cover_xl'] = this.coverXl;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    return data;
  }
}
