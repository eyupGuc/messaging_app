class TeachersRepository {
  List<Teacher> teachers = [
    Teacher("Veysel", "Aksoy", "Erkek", 43),
    Teacher("Selma", "Kaya", "Kadın", 23)
  ];
}

class Teacher {
  String ad;
  String soyad;
  int yas;
  String cinsiyet;
  Teacher(this.ad, this.soyad, this.cinsiyet, this.yas);
}
