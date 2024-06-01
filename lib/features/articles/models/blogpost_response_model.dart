

class BlogPostResponseModel {
  Sys sys;
  int total;
  int skip;
  int limit;
  List<Item> items;
  Includes includes;

  BlogPostResponseModel({
    required this.sys,
    required this.total,
    required this.skip,
    required this.limit,
    required this.items,
    required this.includes,
  });

  factory BlogPostResponseModel.fromJson(Map<String, dynamic> json) {
    return BlogPostResponseModel(
      sys: Sys.fromJson(json['sys']),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      items: List<Item>.from(json['items'].map((x) => Item.fromJson(x))),
      includes: Includes.fromJson(json['includes']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sys': sys.toJson(),
      'total': total,
      'skip': skip,
      'limit': limit,
      'items': List<dynamic>.from(items.map((x) => x.toJson())),
      'includes': includes.toJson(),
    };
  }
}

class Sys {
  String type;

  Sys({required this.type});

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(type: json['type']);
  }

  Map<String, dynamic> toJson() {
    return {'type': type};
  }
}

class Item {
  Metadata metadata;
  Sys sys;
  Fields fields;

  Item({required this.metadata, required this.sys, required this.fields});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      metadata: Metadata.fromJson(json['metadata']),
      sys: Sys.fromJson(json['sys']),
      fields: Fields.fromJson(json['fields']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'metadata': metadata.toJson(),
      'sys': sys.toJson(),
      'fields': fields.toJson(),
    };
  }
}

class Metadata {
  List<dynamic> tags;

  Metadata({required this.tags});

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(tags: List<dynamic>.from(json['tags'].map((x) => x)));
  }

  Map<String, dynamic> toJson() {
    return {'tags': List<dynamic>.from(tags.map((x) => x))};
  }
}

class Fields {
  String title;
  Thumbnail thumbnail;
  String dateTime;
  Content content;
  List<String> tags;

  Fields({
    required this.title,
    required this.thumbnail,
    required this.dateTime,
    required this.content,
    required this.tags,
  });

  factory Fields.fromJson(Map<String, dynamic> json) {
    return Fields(
      title: json['title'],
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      dateTime: json['dateTime'],
      content: Content.fromJson(json['content']),
      tags: List<String>.from(json['tags'].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'thumbnail': thumbnail.toJson(),
      'dateTime': dateTime,
      'content': content.toJson(),
      'tags': List<dynamic>.from(tags.map((x) => x)),
    };
  }
}

class Thumbnail {
  Metadata metadata;
  Sys sys;
  ThumbnailFields fields;

  Thumbnail({
    required this.metadata,
    required this.sys,
    required this.fields,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      metadata: Metadata.fromJson(json['metadata']),
      sys: Sys.fromJson(json['sys']),
      fields: ThumbnailFields.fromJson(json['fields']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'metadata': metadata.toJson(),
      'sys': sys.toJson(),
      'fields': fields.toJson(),
    };
  }
}

class ThumbnailFields {
  String title;
  String description;
  File file;

  ThumbnailFields({
    required this.title,
    required this.description,
    required this.file,
  });

  factory ThumbnailFields.fromJson(Map<String, dynamic> json) {
    return ThumbnailFields(
      title: json['title'],
      description: json['description'],
      file: File.fromJson(json['file']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'file': file.toJson(),
    };
  }
}

class File {
  String url;
  Details details;
  String fileName;
  String contentType;

  File({
    required this.url,
    required this.details,
    required this.fileName,
    required this.contentType,
  });

  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      url: json['url'],
      details: Details.fromJson(json['details']),
      fileName: json['fileName'],
      contentType: json['contentType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'details': details.toJson(),
      'fileName': fileName,
      'contentType': contentType,
    };
  }
}

class Details {
  int size;
  Image image;

  Details({required this.size, required this.image});

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      size: json['size'],
      image: Image.fromJson(json['image']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'size': size,
      'image': image.toJson(),
    };
  }
}

class Image {
  int width;
  int height;

  Image({required this.width, required this.height});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      width: json['width'],
      height: json['height'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
    };
  }
}

class Content {
  Data data;
  List<ContentElement> content;
  String nodeType;

  Content({
    required this.data,
    required this.content,
    required this.nodeType,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      data: Data.fromJson(json['data']),
      content: List<ContentElement>.from(
          json['content'].map((x) => ContentElement.fromJson(x))),
      nodeType: json['nodeType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
      'content': List<dynamic>.from(content.map((x) => x.toJson())),
      'nodeType': nodeType,
    };
  }
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}

class ContentElement {
  Data data;
  List<ContentElementContent> content;
  String nodeType;

  ContentElement({
    required this.data,
    required this.content,
    required this.nodeType,
  });

  factory ContentElement.fromJson(Map<String, dynamic> json) {
    return ContentElement(
      data: Data.fromJson(json['data']),
      content: List<ContentElementContent>.from(
          json['content'].map((x) => ContentElementContent.fromJson(x))),
      nodeType: json['nodeType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
      'content': List<dynamic>.from(content.map((x) => x.toJson())),
      'nodeType': nodeType,
    };
  }
}

class ContentElementContent {
  Data data;
  List<dynamic> marks;
  String value;
  String nodeType;

  ContentElementContent({
    required this.data,
    required this.marks,
    required this.value,
    required this.nodeType,
  });

  factory ContentElementContent.fromJson(Map<String, dynamic> json) {
    return ContentElementContent(
      data: Data.fromJson(json['data']),
      marks: List<dynamic>.from(json['marks'].map((x) => x)),
      value: json['value'],
      nodeType: json['nodeType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
      'marks': List<dynamic>.from(marks.map((x) => x)),
      'value': value,
      'nodeType': nodeType,
    };
  }
}

class Includes {
  List<Asset> asset;

  Includes({required this.asset});

  factory Includes.fromJson(Map<String, dynamic> json) {
    return Includes(
      asset: List<Asset>.from(json['Asset'].map((x) => Asset.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Asset': List<dynamic>.from(asset.map((x) => x.toJson())),
    };
  }
}

class Asset {
  Metadata metadata;
  Sys sys;
  AssetFields fields;

  Asset({required this.metadata, required this.sys, required this.fields});

  factory Asset.fromJson(Map<String, dynamic> json) {
    return Asset(
      metadata: Metadata.fromJson(json['metadata']),
      sys: Sys.fromJson(json['sys']),
      fields: AssetFields.fromJson(json['fields']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'metadata': metadata.toJson(),
      'sys': sys.toJson(),
      'fields': fields.toJson(),
    };
  }
}

class AssetFields {
  String title;
  String description;
  File file;

  AssetFields({
    required this.title,
    required this.description,
    required this.file,
  });

  factory AssetFields.fromJson(Map<String, dynamic> json) {
    return AssetFields(
      title: json['title'],
      description: json['description'],
      file: File.fromJson(json['file']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'file': file.toJson(),
    };
  }
}
