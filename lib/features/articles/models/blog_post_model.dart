import 'package:equatable/equatable.dart';

class BlogPostModel extends Equatable {
  const BlogPostModel({
    required this.sys,
    required this.total,
    required this.skip,
    required this.limit,
    required this.items,
  });

  final BlogPostModelSys? sys;
  final int? total;
  final int? skip;
  final int? limit;
  final List<Item> items;

  factory BlogPostModel.fromJson(Map<String, dynamic> json){
    return BlogPostModel(
      sys: json["sys"] == null ? null : BlogPostModelSys.fromJson(json["sys"]),
      total: json["total"],
      skip: json["skip"],
      limit: json["limit"],
      items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
    );
  }

  @override
  String toString(){
    return "$sys, $total, $skip, $limit, $items, ";
  }

  @override
  List<Object?> get props => [
    sys, total, skip, limit, items, ];
}

class Item extends Equatable {
  const Item({
    required this.metadata,
    required this.sys,
    required this.fields,
  });

  final Metadata? metadata;
  final ThumbnailSys? sys;
  final ItemFields? fields;

  factory Item.fromJson(Map<String, dynamic> json){
    return Item(
      metadata: json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
      sys: json["sys"] == null ? null : ThumbnailSys.fromJson(json["sys"]),
      fields: json["fields"] == null ? null : ItemFields.fromJson(json["fields"]),
    );
  }

  @override
  String toString(){
    return "$metadata, $sys, $fields, ";
  }

  @override
  List<Object?> get props => [
    metadata, sys, fields, ];
}

class ItemFields extends Equatable {
  ItemFields({
    required this.title,
    required this.thumbnail,
    required this.dateTime,
    required this.content,
    required this.tags,
  });

  final String? title;
  final Thumbnail? thumbnail;
  final String? dateTime;
  final FieldsContent? content;
  final List<String> tags;

  factory ItemFields.fromJson(Map<String, dynamic> json){
    return ItemFields(
      title: json["title"],
      thumbnail: json["thumbnail"] == null ? null : Thumbnail.fromJson(json["thumbnail"]),
      dateTime: json["dateTime"],
      content: json["content"] == null ? null : FieldsContent.fromJson(json["content"]),
      tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
    );
  }

  @override
  String toString(){
    return "$title, $thumbnail, $dateTime, $content, $tags, ";
  }

  @override
  List<Object?> get props => [
    title, thumbnail, dateTime, content, tags, ];
}

class FieldsContent extends Equatable {
  FieldsContent({
    required this.data,
    required this.content,
    required this.nodeType,
  });

  final Data? data;
  final List<PurpleContent> content;
  final String? nodeType;

  factory FieldsContent.fromJson(Map<String, dynamic> json){
    return FieldsContent(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      content: json["content"] == null ? [] : List<PurpleContent>.from(json["content"]!.map((x) => PurpleContent.fromJson(x))),
      nodeType: json["nodeType"],
    );
  }

  @override
  String toString(){
    return "$data, $content, $nodeType, ";
  }

  @override
  List<Object?> get props => [
    data, content, nodeType, ];
}

class PurpleContent extends Equatable {
  PurpleContent({
    required this.data,
    required this.content,
    required this.nodeType,
  });

  final Data? data;
  final List<FluffyContent> content;
  final String? nodeType;

  factory PurpleContent.fromJson(Map<String, dynamic> json){
    return PurpleContent(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      content: json["content"] == null ? [] : List<FluffyContent>.from(json["content"]!.map((x) => FluffyContent.fromJson(x))),
      nodeType: json["nodeType"],
    );
  }

  @override
  String toString(){
    return "$data, $content, $nodeType, ";
  }

  @override
  List<Object?> get props => [
    data, content, nodeType, ];
}

class FluffyContent extends Equatable {
  FluffyContent({
    required this.data,
    required this.marks,
    required this.value,
    required this.nodeType,
  });

  final Data? data;
  final List<dynamic> marks;
  final String? value;
  final String? nodeType;

  factory FluffyContent.fromJson(Map<String, dynamic> json){
    return FluffyContent(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      marks: json["marks"] == null ? [] : List<dynamic>.from(json["marks"]!.map((x) => x)),
      value: json["value"],
      nodeType: json["nodeType"],
    );
  }

  @override
  String toString(){
    return "$data, $marks, $value, $nodeType, ";
  }

  @override
  List<Object?> get props => [
    data, marks, value, nodeType, ];
}

class Data extends Equatable {
  Data({required this.json});
  final Map<String,dynamic> json;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
        json: json
    );
  }

  @override
  String toString(){
    return "";
  }

  @override
  List<Object?> get props => [
  ];
}

class Thumbnail extends Equatable {
  Thumbnail({
    required this.metadata,
    required this.sys,
    required this.fields,
  });

  final Metadata? metadata;
  final ThumbnailSys? sys;
  final ThumbnailFields? fields;

  factory Thumbnail.fromJson(Map<String, dynamic> json){
    return Thumbnail(
      metadata: json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
      sys: json["sys"] == null ? null : ThumbnailSys.fromJson(json["sys"]),
      fields: json["fields"] == null ? null : ThumbnailFields.fromJson(json["fields"]),
    );
  }

  @override
  String toString(){
    return "$metadata, $sys, $fields, ";
  }

  @override
  List<Object?> get props => [
    metadata, sys, fields, ];
}

class ThumbnailFields extends Equatable {
  ThumbnailFields({
    required this.title,
    required this.description,
    required this.file,
  });

  final String? title;
  final String? description;
  final FileClass? file;

  factory ThumbnailFields.fromJson(Map<String, dynamic> json){
    return ThumbnailFields(
      title: json["title"],
      description: json["description"],
      file: json["file"] == null ? null : FileClass.fromJson(json["file"]),
    );
  }

  @override
  String toString(){
    return "$title, $description, $file, ";
  }

  @override
  List<Object?> get props => [
    title, description, file, ];
}

class FileClass extends Equatable {
  FileClass({
    required this.url,
    required this.details,
    required this.fileName,
    required this.contentType,
  });

  final String? url;
  final Details? details;
  final String? fileName;
  final String? contentType;

  factory FileClass.fromJson(Map<String, dynamic> json){
    return FileClass(
      url: json["url"],
      details: json["details"] == null ? null : Details.fromJson(json["details"]),
      fileName: json["fileName"],
      contentType: json["contentType"],
    );
  }

  @override
  String toString(){
    return "$url, $details, $fileName, $contentType, ";
  }

  @override
  List<Object?> get props => [
    url, details, fileName, contentType, ];
}

class Details extends Equatable {
  Details({
    required this.size,
    required this.image,
  });

  final int? size;
  final Image? image;

  factory Details.fromJson(Map<String, dynamic> json){
    return Details(
      size: json["size"],
      image: json["image"] == null ? null : Image.fromJson(json["image"]),
    );
  }

  @override
  String toString(){
    return "$size, $image, ";
  }

  @override
  List<Object?> get props => [
    size, image, ];
}

class Image extends Equatable {
  Image({
    required this.width,
    required this.height,
  });

  final int? width;
  final int? height;

  factory Image.fromJson(Map<String, dynamic> json){
    return Image(
      width: json["width"],
      height: json["height"],
    );
  }

  @override
  String toString(){
    return "$width, $height, ";
  }

  @override
  List<Object?> get props => [
    width, height, ];
}

class Metadata extends Equatable {
  Metadata({
    required this.tags,
  });

  final List<dynamic> tags;

  factory Metadata.fromJson(Map<String, dynamic> json){
    return Metadata(
      tags: json["tags"] == null ? [] : List<dynamic>.from(json["tags"]!.map((x) => x)),
    );
  }

  @override
  String toString(){
    return "$tags, ";
  }

  @override
  List<Object?> get props => [
    tags, ];
}

class ThumbnailSys extends Equatable {
  ThumbnailSys({
    required this.space,
    required this.id,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.environment,
    required this.revision,
    required this.locale,
    required this.contentType,
  });

  final ContentType? space;
  final String? id;
  final String? type;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final ContentType? environment;
  final int? revision;
  final String? locale;
  final ContentType? contentType;

  factory ThumbnailSys.fromJson(Map<String, dynamic> json){
    return ThumbnailSys(
      space: json["space"] == null ? null : ContentType.fromJson(json["space"]),
      id: json["id"],
      type: json["type"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      environment: json["environment"] == null ? null : ContentType.fromJson(json["environment"]),
      revision: json["revision"],
      locale: json["locale"],
      contentType: json["contentType"] == null ? null : ContentType.fromJson(json["contentType"]),
    );
  }

  @override
  String toString(){
    return "$space, $id, $type, $createdAt, $updatedAt, $environment, $revision, $locale, $contentType, ";
  }

  @override
  List<Object?> get props => [
    space, id, type, createdAt, updatedAt, environment, revision, locale, contentType, ];
}

class ContentType extends Equatable {
  ContentType({
    required this.sys,
  });

  final ContentTypeSys? sys;

  factory ContentType.fromJson(Map<String, dynamic> json){
    return ContentType(
      sys: json["sys"] == null ? null : ContentTypeSys.fromJson(json["sys"]),
    );
  }

  @override
  String toString(){
    return "$sys, ";
  }

  @override
  List<Object?> get props => [
    sys, ];
}

class ContentTypeSys extends Equatable {
  ContentTypeSys({
    required this.type,
    required this.linkType,
    required this.id,
  });

  final String? type;
  final String? linkType;
  final String? id;

  factory ContentTypeSys.fromJson(Map<String, dynamic> json){
    return ContentTypeSys(
      type: json["type"],
      linkType: json["linkType"],
      id: json["id"],
    );
  }

  @override
  String toString(){
    return "$type, $linkType, $id, ";
  }

  @override
  List<Object?> get props => [
    type, linkType, id, ];
}

class BlogPostModelSys extends Equatable {
  BlogPostModelSys({
    required this.type,
  });

  final String? type;

  factory BlogPostModelSys.fromJson(Map<String, dynamic> json){
    return BlogPostModelSys(
      type: json["type"],
    );
  }

  @override
  String toString(){
    return "$type, ";
  }

  @override
  List<Object?> get props => [
    type, ];
}
