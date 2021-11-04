import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.search),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: "Tìm kiếm trên FaceBook",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Text("Hủy", style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
