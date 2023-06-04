class Product {
  Product({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    required this.image,
    required this.images,
  });

  final String id;
  final String name;
  final String type;
  final String price;
  final String image;
  final List<String> images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["_id"],
    name: json["name"],
    type: json["type"],
    price: json["price"],
    image: json["image"],
    images: List<String>.from((json["images"] ?? [])),

  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "type": type,
    "price": price,
    "image": image,
    "images": images,
  };


  static List<Product> products = [

    Product.fromJson({
      '_id': '1',
      'name': 'Essential men\'s stripe shirt (Italian)',
      'type': 'Shirt',
      'price': '\$12.00',
      'image':
      'https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_1280.jpg',
      'images': [
        'https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/12/23/22/19/photoshoot-1928086_1280.jpg',
        'https://cdn.pixabay.com/photo/2018/06/03/14/39/boots-3450702_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
      ],
    }),

    Product.fromJson({
      '_id': '2',
      'name': 'Unisex sweat shirt (France)',
      'type': 'Shirt',
      'price': '\$45.00',
      'image':
      'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',
      'images': [
        'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/02/09/14/07/funny-629675_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
        'https://cdn.pixabay.com/photo/2018/06/03/14/39/boots-3450702_1280.jpg',
      ],
    }),

    Product.fromJson({
      '_id': '3',
      'name': 'Turkish stock jean (Blue & Ripped)',
      'type': 'Trousers',
      'price': '\$45.00',
      'image':
      'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
      'images': [
        'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
        'https://cdn.pixabay.com/photo/2021/11/15/05/25/boutique-6796399_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
      ],
    }),

    for (var i = 0; i < 10; i++)
      Product.fromJson({
        '_id':  '${4 + i}',
        'name': 'Unisex ultra light cotton shirts (${4 + i}X)',
        'type': 'Shirts',
        'price': '\$13.50',
        'image':
        'https://cdn.pixabay.com/photo/2021/11/15/05/25/boutique-6796399_1280.jpg',
        'images': [
          'https://cdn.pixabay.com/photo/2021/11/15/05/25/boutique-6796399_1280.jpg',
          'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
          'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
          'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',
        ],
      }),
  ];

}


