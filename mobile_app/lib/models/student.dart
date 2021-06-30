class Student{
  int? _id;
  String? _first_name;
  String? _last_name;
  String? _occupation;
  String? _gender;
  String? _email;
  int? _phone;
  String? _country;
  String? _city;
  String? _school;
  String? _level;
  String? _interest;
  String? _password;

  Student (this._first_name, this._last_name, this._occupation,this._gender,
      this._email,this._phone,this._country,this._city,this._school,this._level,this._interest,this._password);
  Student.withId(this._id, this._first_name, this._last_name, this._occupation,this._gender,
      this._email,this._phone,this._country,this._city,this._school,this._level,this._interest,this._password);
  int? get id => _id;
  String? get first_name=> _first_name;
  String? get last_name=> _last_name;
  String? get occupation=> _occupation;
  String? get gender=> _gender;
  String? get email=> _email;
  int? get phone=> _phone;
  String? get country=> _country;
  String? get city=> _city;
  String? get school=> _school;
  String? get level=> _level;
  String? get interest=> _interest;
  String? get password=> _password;

  Map <String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    map["first_name"] = _first_name;
    map["last_name"] = _last_name;
    map["occupation"] = _occupation;
    map["gender"] = _gender;
    map["email"] = _email;
    map["phone"] = _phone;
    map["country"] = _country;
    map["city"] = _city;
    map["school"] = _school;
    map["interest"] = _interest;
    map["level"] = _level;
    map["password"] = _password;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  Student.fromObject(dynamic o) {
    this._id = o["id"];
    this._first_name = o["first_name"];
    this._last_name = o["last_name"];
    this._occupation = o["occupation"];
    this._gender = o["gender"];
    this._email = o["email"];
    this._phone = o["phone"];
    this._country = o["country"];
    this._city = o["city"];
    this._school = o["school"];
    this._interest = o["interest"];
    this._level = o["level"];
    this._password = o["password"];
  }
}