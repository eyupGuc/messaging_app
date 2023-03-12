class StudentsRepository {
  final students = [
    Student("Ali", "Yılmaz", 34, "Erkek"),
    Student("Ayşe", "Kara", 32, "Kadın"),
  ];

  final Set<Student> sevdiklerim = {};

  void sev(Student ogrenci, bool seviyorMuyum) {
    if (seviyorMuyum) {
      sevdiklerim.add(ogrenci);
    } else {
      sevdiklerim.remove(ogrenci);
    }
  }

  bool seviyorMuyum(Student ogrenci) {
    return sevdiklerim.contains(ogrenci);
  }
}

class Student {
  String ad;
  String soyad;
  int yas;
  String cinsiyet;
  Student(this.ad, this.soyad, this.yas, this.cinsiyet);
}
