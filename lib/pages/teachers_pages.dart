import 'package:flutter/material.dart';
import 'package:messaging_app/repository/teachers_repository.dart';

class TeachersPage extends StatefulWidget {
  final TeachersRepository teachersRepository;
  const TeachersPage(this.teachersRepository, {super.key});

  @override
  State<TeachersPage> createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teachers pages"),
      ),
      body: Column(children: [
        PhysicalModel(
          color: Colors.white,
          elevation: 10,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
              child:
                  Text("${widget.teachersRepository.teachers.length} Teacher"),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => OgretmenSatiri(
                widget.teachersRepository.teachers[index],
                widget.teachersRepository),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: widget.teachersRepository.teachers.length,
          ),
        )
      ]),
    );
  }
}

class OgretmenSatiri extends StatefulWidget {
  final Teacher ogretmen;
  final TeachersRepository teachersRepository;
  const OgretmenSatiri(this.ogretmen, this.teachersRepository);

  @override
  State<OgretmenSatiri> createState() => _OgretmenSatiriState();
}

class _OgretmenSatiriState extends State<OgretmenSatiri> {
  build(BuildContext context) {
     
    return ListTile(
      leading: widget.ogretmen.cinsiyet == "kadın"
          ? const Icon(Icons.woman)
          : const Icon(Icons.man),
      title: Text(widget.ogretmen.ad + ' ' + widget.ogretmen.soyad),
      
    );
  }
}
