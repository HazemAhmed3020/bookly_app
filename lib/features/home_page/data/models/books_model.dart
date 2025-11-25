class BooksModel {
  final String? id;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  BooksModel({
    this.id,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      id: json['id'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo: json['saleInfo'] != null
          ? SaleInfo.fromJson(json['saleInfo'])
          : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
    );
  }


  String get image {
    if (volumeInfo?.imageLinks?.thumbnail != null) {
      return volumeInfo!.imageLinks!.thumbnail!;
    } else if (volumeInfo?.imageLinks?.smallThumbnail != null) {
      return volumeInfo!.imageLinks!.smallThumbnail!;
    }
    return 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781476740195/the-library-book-9781476740195_hr.jpg';
  }

  String get title => volumeInfo?.title ?? 'No Title';

  String get author => (volumeInfo?.authors?.isNotEmpty ?? false)
      ? volumeInfo!.authors![0]
      : 'Unknown Author';

  String get price => saleInfo?.listPrice?.amount?.toString() ?? 'Free';

  num get rating => volumeInfo?.averageRating ?? 0;

  num get count => volumeInfo?.ratingsCount ?? 0;

  String get category => (volumeInfo?.categories?.isNotEmpty ?? false)
      ? volumeInfo!.categories![0]
      : 'Computers';

  String get url {
    if (accessInfo?.webReaderLink != null) {
      return accessInfo!.webReaderLink!;
    }
    return volumeInfo?.previewLink ?? volumeInfo?.infoLink ?? '';
  }
}



class VolumeInfo {
  final String? title;
  final List<String>? authors;
  final ImageLinks? imageLinks;
  final num? averageRating;
  final num? ratingsCount;
  final List<String>? categories;
  final String? previewLink;
  final String? infoLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.imageLinks,
    this.averageRating,
    this.ratingsCount,
    this.categories,
    this.previewLink,
    this.infoLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: (json['authors'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      categories: (json['categories'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      averageRating: json['averageRating'],
      ratingsCount: json['ratingsCount'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
    );
  }
}

class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }
}

class SaleInfo {
  final ListPrice? listPrice;

  SaleInfo({this.listPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      listPrice: json['listPrice'] != null
          ? ListPrice.fromJson(json['listPrice'])
          : null,
    );
  }
}

class ListPrice {
  final num? amount;
  final String? currencyCode;

  ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) {
    return ListPrice(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }
}

class AccessInfo {
  final String? webReaderLink;

  AccessInfo({this.webReaderLink});

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      webReaderLink: json['webReaderLink'],
    );
  }
}