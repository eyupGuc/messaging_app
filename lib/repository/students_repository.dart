class StudentsRepository {
  List<Student> students = [
    Student("Ali", "Yılmaz", 34, "Erkek"),
    Student("Ayşe", "Kara", 32, "Kadın"),
  ];
}

class Student {
  String ad;
  String soyad;
  int yas;
  String cinsiyet;
  Student(this.ad, this.soyad, this.yas, this.cinsiyet);
}
