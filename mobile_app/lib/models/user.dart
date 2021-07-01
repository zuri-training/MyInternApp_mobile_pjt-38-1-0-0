class user {
  int? _id;
  String? _email;
  String? _password;

  user(this._email, this._password);
  user.withId(this._id, this._email, this._password);
  int? get id => _id;
  String? get email => _email;
  String? get password => _password;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["email"] = _email;
    map["password"] = _password;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  user.fromObject(dynamic o) {
    this._id = o["id"];
    this._email = o["email"];
    this._password = o["password"];
  }
}
