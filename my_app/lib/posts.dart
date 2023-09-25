class Poster {
  String? id;
  String? dp;
  String? fname;
  String? lname;
  String? username;

  Poster(String id, String dp, String fistname, String lname, String username) {
    this.id = id;
    this.dp = dp;
    this.fname = fistname;
    this.lname = lname;
    this.username = username;
  }
}

class Post {
  String? poster_photo;
  String? content;
  String? photo;
  String? posted;

  Post(String img, String content, String photo, String posted) {
    // this.postedBy = user;
    this.poster_photo = img;
    this.content = content;
    this.photo = photo;
    this.posted = posted;
  }
}

