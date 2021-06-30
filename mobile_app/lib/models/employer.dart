class Employer{
  int? _id;
  String? _first_name;
  String? _last_name;
  String? _occupation;
  String? _gender;
  String? _email;
  int? _phone;
  String? _country;
  String? _city;
  String? _business_name;
  String? _role;
  String? _address;
  String? _password;

  Employer (this._first_name, this._last_name, this._occupation,this._gender,
      this._email,this._phone,this._country,this._city,this._business_name,this._role,this._address,this._password);
  Employer.withId(this._id, this._first_name, this._last_name, this._occupation,this._gender,
      this._email,this._phone,this._country,this._city,this._business_name,this._role,this._address,this._password);
  int? get id => _id;
  String? get first_name=> _first_name;
  String? get last_name=> _last_name;
  String? get occupation=> _occupation;
  String? get gender=> _gender;
  String? get email=> _email;
  int? get phone=> _phone;
  String? get country=> _country;
  String? get city=> _city;
  String? get business_name=> _business_name;
  String? get role=> _role;
  String? get address=> _address;
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
    map["business_name"] = _business_name;
    map["role"] = _role;
    map["address"] = _address;
    map["password"] = _password;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  Employer.fromObject(dynamic o) {
    this._id = o["id"];
    this._first_name = o["first_name"];
    this._last_name = o["last_name"];
    this._occupation = o["occupation"];
    this._gender = o["gender"];
    this._email = o["email"];
    this._phone = o["phone"];
    this._country = o["country"];
    this._city = o["city"];
    this._business_name = o["business_name"];
    this._role = o["role"];
    this._address = o["address"];
    this._password = o["password"];
  }
}