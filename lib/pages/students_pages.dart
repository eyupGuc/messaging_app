import 'package:flutter/material.dart';
import 'package:messaging_app/repository/students_repository.dart';

class StudentsPages extends StatefulWidget {
  StudentsRepository studentsRepository;
  StudentsPages(this.studentsRepository, {super.key});

  @override
  State<StudentsPages> createState() => _StudentsPagesState();
}

class _StudentsPagesState extends State<StudentsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students pages"),
      ),
      body: Column(children: [
        PhysicalModel(
          color: Colors.white,
          elevation: 10,
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
              child:
                  Text("${widget.studentsRepository.students.length} Students"),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => OgrenciSatiri(
                widget.studentsRepository.students[index],
                widget.studentsRepository),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: widget.studentsRepository.students.length,
          ),
        )
      ]),
    );
  }
}

class OgrenciSatiri extends StatefulWidget {
  final Student ogrenci;
  final StudentsRepository studentsRepository;

  const OgrenciSatiri(
    this.ogrenci,
    this.studentsRepository, {
    super.key,
  });

  @override
  State<OgrenciSatiri> createState() => _OgrenciSatiriState();
}

class _OgrenciSatiriState extends State<OgrenciSatiri> {

  @override
  Widget build(BuildContext context) {
    bool seviyorMuyum=  widget.studentsRepository.seviyorMuyum(widget.ogrenci);
    return ListTile(
      leading: widget.ogrenci.cinsiyet == "kadın"
          ? const Icon(Icons.woman)
          : const Icon(Icons.man),
      title: Text(widget.ogrenci.ad + ' ' + widget.ogrenci.soyad),
      trailing: IconButton(
          onPressed: () {
            setState(() {
              widget.studentsRepository.sev(widget.ogrenci,!seviyorMuyum);
            });
          },
          icon: Icon(widget.studentsRepository.seviyorMuyum(widget.ogrenci)
              ? Icons.favorite
              : Icons.favorite_border)),
    );
  }
}
