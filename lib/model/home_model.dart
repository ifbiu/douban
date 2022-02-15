class MovieItem {
  List<Data>? data;
  int? createdAt;
  int? updatedAt;
  String? id;
  String? originalName;
  int? imdbVotes;
  String? imdbRating;
  String? rottenRating;
  int? rottenVotes;
  String? year;
  String? imdbId;
  String? alias;
  String? doubanId;
  String? type;
  String? doubanRating;
  int? doubanVotes;
  int? duration;
  String? dateReleased;

  MovieItem(
      {this.data,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.originalName,
        this.imdbVotes,
        this.imdbRating,
        this.rottenRating,
        this.rottenVotes,
        this.year,
        this.imdbId,
        this.alias,
        this.doubanId,
        this.type,
        this.doubanRating,
        this.doubanVotes,
        this.duration,
        this.dateReleased});

  MovieItem.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
    originalName = json['originalName'];
    imdbVotes = json['imdbVotes'];
    imdbRating = json['imdbRating'];
    rottenRating = json['rottenRating'];
    rottenVotes = json['rottenVotes'];
    year = json['year'];
    imdbId = json['imdbId'];
    alias = json['alias'];
    doubanId = json['doubanId'];
    type = json['type'];
    doubanRating = json['doubanRating'];
    doubanVotes = json['doubanVotes'];
    duration = json['duration'];
    dateReleased = json['dateReleased'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['id'] = this.id;
    data['originalName'] = this.originalName;
    data['imdbVotes'] = this.imdbVotes;
    data['imdbRating'] = this.imdbRating;
    data['rottenRating'] = this.rottenRating;
    data['rottenVotes'] = this.rottenVotes;
    data['year'] = this.year;
    data['imdbId'] = this.imdbId;
    data['alias'] = this.alias;
    data['doubanId'] = this.doubanId;
    data['type'] = this.type;
    data['doubanRating'] = this.doubanRating;
    data['doubanVotes'] = this.doubanVotes;
    data['duration'] = this.duration;
    data['dateReleased'] = this.dateReleased;
    return data;
  }
}

class Data {
  int? createdAt;
  int? updatedAt;
  String? id;
  String? poster;
  String? name;
  String? genre;
  String? description;
  String? language;
  String? country;
  String? lang;
  String? shareImage;
  String? movie;

  Data(
      {this.createdAt,
        this.updatedAt,
        this.id,
        this.poster,
        this.name,
        this.genre,
        this.description,
        this.language,
        this.country,
        this.lang,
        this.shareImage,
        this.movie});

  Data.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
    poster = json['poster'];
    name = json['name'];
    genre = json['genre'];
    description = json['description'];
    language = json['language'];
    country = json['country'];
    lang = json['lang'];
    shareImage = json['shareImage'];
    movie = json['movie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['id'] = this.id;
    data['poster'] = this.poster;
    data['name'] = this.name;
    data['genre'] = this.genre;
    data['description'] = this.description;
    data['language'] = this.language;
    data['country'] = this.country;
    data['lang'] = this.lang;
    data['shareImage'] = this.shareImage;
    data['movie'] = this.movie;
    return data;
  }
}