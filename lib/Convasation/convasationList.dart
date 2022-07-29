import 'package:flutter/material.dart';
import 'package:screen/Convasation/model/chatPage.dart';

class ConvasationList extends StatelessWidget {
  ConvasationList(
      {Key? key,
      required this.message,
      required this.imageURL,
      required this.isMessageRead,
      required this.name,
      required this.time})
      : super(key: key);

  String name;
  String message;
  String imageURL;
  String time;
  bool isMessageRead;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              // backgroundImage: NetworkImage(widget.imageURL),
              minRadius: 30,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                          fontWeight: isMessageRead
                              ? FontWeight.bold
                              : FontWeight.normal),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
