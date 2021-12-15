class Related {
  final int id;
  final String name;
  final int search_count;
  final int use_count;
  final String created_at;
  final String updated_at;



  Related({this.id, this.name, this.search_count, this.use_count, this.created_at, this.updated_at});

  factory Related.fromJson(Map<String, dynamic> json) {

    return Related(
      id: json['id'] as int,
      name: json['name'] as String,
      search_count: json['search_count'] as int,
      use_count: json['use_count'] as int,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );
  }
}

class Data {
  final DataList dataList;

  Data({this.dataList});

  factory Data.fromJson(Map<String, dynamic> json) {
    Map<String, Object> map=json['data'] as Map;
    Iterable<Object> iter = map.values;
    DataList data;

    iter.length>0? data = new DataList(posts: (iter.elementAt(0) as List).map((i) => Posts.fromJson(i)).toList(), events:(iter.elementAt(1) as List).map((i) => Events.fromJson(i)).toList()) : null;

    return Data(
      dataList: data
    );
  }
}

class DataList {
  final List<Posts> posts;
  final List<Events> events;

  DataList({this.posts, this.events});

  factory DataList.fromJson(Map<String, dynamic> json) {
    var post = json['posts'] as List;
    var event = json['events'] as List;

    print(post);
    List<Posts> postList = post.map((i)=>Posts.fromJson(i)).toList();
    List<Events> eventList = event.map((i) => Events.fromJson(i)).toList();

    return DataList(
        posts: postList,
        events: eventList
    );
  }
}

class Posts {
  final int id;
  final String title;
  final String heroimage;
  final String link;
  final String photo;
  final String company;
  final String start;
  final String end;

  Posts({this.id, this.title, this.heroimage, this.link, this.photo, this.company, this.start, this.end});

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      id: json['id'] as int,
      title: json['title'] as String,
      heroimage: json['heroimage'] as String,
      link: json['link'] as String,
      photo: json['photo'] as String,
      company: json['company'] as String,
      start: json['start'] as String,
      end: json['end'] as String,
    );
  }
}

class Events {
  final int id;
  final String title;
  final String link;
  final String photo;
  final int brand_id;
  final int item_id;
  final String created_at;
  final String updated_at;
  final int registry_id;
  final int priority;
  final int publish;
  final String dcrate;
  final String dcprice;
  final String listprice;
  final int my_bookmark;
  final Brand brand;

  Events({this.id, this.title, this.link, this.photo, this.brand_id, this.item_id, this.created_at, this.updated_at, this.registry_id, this.priority, this.publish, this.dcrate, this.dcprice, this.listprice, this.my_bookmark, this.brand});

  factory Events.fromJson(Map<String, dynamic> json) {
    Map<String, Object> map=json['brand'] as Map;
    Iterable<Object> iter = map.values;
    Brand data;

    iter.length>0? data = new Brand(id:iter.elementAt(0), name:iter.elementAt(1), description:iter.elementAt(2), option:iter.elementAt(3), created_at:iter.elementAt(4),updated_at:iter.elementAt(5)) : null;

    return Events(
      id: json['id'] as int,
      title: json['title'] as String,
      link: json['link'] as String,
      photo: json['photo'] as String,
      brand_id: json['brand_id'] as int,
      item_id: json['item_id'] as int,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      registry_id: json['registry_id'] as int,
      priority: json['priority'] as int,
      publish: json['publish'] as int,
      dcrate: json['dcrate'] as String,
      dcprice: json['dcprice'] as String,
      listprice: json['listprice'] as String,
      my_bookmark: json['my_bookmark'] as int,
      brand:data,
    );
  }
}

class Brand {
  final int id;
  final String name;
  final String description;
  final String option;
  final String created_at;
  final String updated_at;

  Brand({this.id, this.name, this.description, this.option, this.created_at, this.updated_at});

  factory Brand.fromJson(Map<String, dynamic> json) {

    return Brand(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      option: json['option'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );
  }
}
