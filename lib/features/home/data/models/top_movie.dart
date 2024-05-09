/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

TopMovie topMovieFromJson(String str) => TopMovie.fromJson(json.decode(str));

String topMovieToJson(TopMovie data) => json.encode(data.toJson());

class TopMovie {
    TopMovie({
        required this.images,
        required this.writers,
        required this.year,
        required this.stars,
        required this.imdbid,
        required this.link,
        required this.director,
        required this.rating,
        required this.description,
        required this.title,
        required this.genre,
        required this.rank,
        required this.id,
    });

    List<List<String>> images;
    List<String> writers;
    String year;
    List<String> stars;
    String imdbid;
    String link;
    List<String> director;
    String rating;
    String description;
    String title;
    List<String> genre;
    int rank;
    String id;

    factory TopMovie.fromJson(Map<dynamic, dynamic> json) => TopMovie(
        images: List<List<String>>.from(json["images"].map((x) => List<String>.from(x.map((x) => x)))),
        writers: List<String>.from(json["Writers"].map((x) => x)),
        year: json["year"],
        stars: List<String>.from(json["Stars"].map((x) => x)),
        imdbid: json["imdbid"],
        link: json["link"],
        director: List<String>.from(json["Director"].map((x) => x)),
        rating: json["rating"],
        description: json["description"],
        title: json["title"],
        genre: List<String>.from(json["genre"].map((x) => x)),
        rank: json["rank"],
        id: json["id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "images": List<dynamic>.from(images.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "Writers": List<dynamic>.from(writers.map((x) => x)),
        "year": year,
        "Stars": List<dynamic>.from(stars.map((x) => x)),
        "imdbid": imdbid,
        "link": link,
        "Director": List<dynamic>.from(director.map((x) => x)),
        "rating": rating,
        "description": description,
        "title": title,
        "genre": List<dynamic>.from(genre.map((x) => x)),
        "rank": rank,
        "id": id,
    };
}
