import 'dart:math';

import 'package:flutter/material.dart';
import 'package:messaging_app/repository/message_repository.dart';

class MessagesPage extends StatelessWidget {
  final MessageRepository messageRepository;
  const MessagesPage(this.messageRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("messages"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(reverse: true,
                itemBuilder: ((context, index) {
                  bool benMiyim = Random().nextBool();
                  return Align(
                    alignment:
                        benMiyim ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            color: Colors.purple.shade300),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text("Merhaba dostum nerdesin?"),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(border: Border.all()),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        )),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Send")),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
