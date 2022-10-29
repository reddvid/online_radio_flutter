class Station {
  String? name;
  String? url;
  String? website;
  String? genre;

  Station({this.name, this.url, this.website, this.genre});

  Station.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    website = json['website'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['website'] = website;
    data['genre'] = genre;
    return data;
  }
}
