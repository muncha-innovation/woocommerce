class Cart {
  String currency;
  int itemCount;
  List<Items> items;
  bool needsShipping;
  String totalPrice;
  int totalWeight;

  Cart(
      {this.currency,
        this.itemCount,
        this.items,
        this.needsShipping,
        this.totalPrice,
        this.totalWeight});

  Cart.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    itemCount = json['item_count'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    needsShipping = json['needs_shipping'];
    totalPrice = json['total_price'];
    totalWeight = json['total_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency'] = this.currency;
    data['item_count'] = this.itemCount;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['needs_shipping'] = this.needsShipping;
    data['total_price'] = this.totalPrice;
    data['total_weight'] = this.totalWeight;
    return data;
  }
  @override toString() => this.toJson().toString();
}

class Items {
  String key;
  int id;
  int quantity;
  String name;
  String sku;
  String permalink;
  List<Images> images;
  String price;
  String linePrice;
  List<String> variation;

  Items(
      {this.key,
        this.id,
        this.quantity,
        this.name,
        this.sku,
        this.permalink,
        this.images,
        this.price,
        this.linePrice,
        this.variation});

  Items.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    id = json['id'];
    quantity = json['quantity'];
    name = json['name'];
    sku = json['sku'];
    permalink = json['permalink'];
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    price = json['price'];
    linePrice = json['line_price'];
    variation = json['variation'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['name'] = this.name;
    data['sku'] = this.sku;
    data['permalink'] = this.permalink;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['line_price'] = this.linePrice;
    data['variation'] = this.variation;
    return data;
  }
}

class Images {
  String id;
  String src;
  String thumbnail;
  bool srcset;
  String sizes;
  String name;
  String alt;

  Images(
      {this.id,
        this.src,
        this.thumbnail,
        this.srcset,
        this.sizes,
        this.name,
        this.alt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    src = json['src'];
    thumbnail = json['thumbnail'];
    srcset = json['srcset'];
    sizes = json['sizes'];
    name = json['name'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['src'] = this.src;
    data['thumbnail'] = this.thumbnail;
    data['srcset'] = this.srcset;
    data['sizes'] = this.sizes;
    data['name'] = this.name;
    data['alt'] = this.alt;
    return data;
  }
}