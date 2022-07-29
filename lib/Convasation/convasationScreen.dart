import 'package:flutter/material.dart';
import 'package:screen/reusable/colors.dart';

class ConvasationScreen extends StatelessWidget {
  const ConvasationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Convasation',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 2, bottom: 2),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorManager.gray,
                    ),
                    child: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.add,
                          color: ColorManager.pink,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Add new',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[100],
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: ColorManager.gray))),
              ),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: ColorManager.blue,
                        elevation: 6,
                        child: ListTile(
                          leading: Icon(Icons.home),
                          title: Text('D A S H B O A R D '),
                        ),
                      ),
                    );
                  }),
            ),

            // SizedBox(height: 10, width: double.infinity),
            // Container(
            //   height: 20,
            //   color: ColorManager.blue,
            // ),

            // Container(
            //   child: ListView.builder(
            //       itemCount: 4,
            //       itemBuilder: (BuildContext context, int index) {
            //         return const Padding(
            //           padding: EdgeInsets.all(8.0),
            //           child: Card(
            //             color: ColorManager.blue,
            //             elevation: 6,
            //             child: ListTile(
            //               leading: Icon(Icons.home),
            //               title: Text('D A S H B O A R D '),
            //             ),
            //           ),
            //         );
            //       }),
            // ),

            /*        Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 6,
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: ColorManager.blue,
                        child: Text('data'),
                      ),
                      title: Text('data'),
                      subtitle: Text('data'),
                      trailing: const Icon(Icons.face_rounded),
                    ),
                  );
                },
              ),
            ), */
            //  child: Container(

            //  ),
          ],
        ),
      ),
    );
  }
}
