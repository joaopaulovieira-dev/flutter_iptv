class ChannelModel {
  final String name;
  final String urlLogo;
  final String urlChannel;
  final String categories;

  ChannelModel({
    required this.name,
    required this.urlLogo,
    required this.urlChannel,
    required this.categories,
  });

  factory ChannelModel.fromJson(Map<String, dynamic> json) {
    return ChannelModel(
      name: json['name'],
      urlLogo: json['urlLogo'],
      urlChannel: json['urlChannel'],
      categories: json['categories'],
    );
  }
}
