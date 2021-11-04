import 'package:demo01/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  bool checkFriend = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Thông báo',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Colors.black12, shape: BoxShape.circle),
                    child:  Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const Search()));
                        },
                        child:const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Visibility(
                  visible: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const Text(
                      "Mới",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    notificationNew(
                        icon: const Icon(
                          Icons.add_alert_rounded,
                          color: Colors.blue,
                        ),
                        comment: "Thông báo",
                        time: 1),
                  ])),
              Visibility(
                  visible: checkFriend,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Những người bạn có thể biết",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      checkFriend =! checkFriend;
                                    });
                                  },
                                  child: const Text("Ẩn", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          notificationFriend(name: "Lê Thế Lữ", banBe: "12 bạn bè chung"),
                        ]),
                  )),
              Visibility(
                  visible: true,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Trước đó",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        notificationNew(
                            icon: const Icon(
                              Icons.add_alert_rounded,
                              color: Colors.blue,
                            ),
                            comment: "Thông báo",
                            time: 1),
                      ])),
            ],
          ),
        ),
      ),
    );
  }

  notificationNew({required Icon icon, required String comment, required int time}) {
    return SizedBox(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 65,
                width: 65,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.network(
                          Data.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(bottom: 1, right: 3, child: icon),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment,
                    overflow: TextOverflow.clip,
                  ),
                  Text('$time'  "giờ")
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
            width: 30,
            child: Center(
                child: Text(
              "...",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
          )
        ],
      ),
    );
  }


  notificationFriend({required String name,required String banBe}){
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65,
            width: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  Data.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(name, style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                 Text(banBe),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue[100]),
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 30)),
                      ),
                      child: const Text("Thêm bạn bè", style: TextStyle(color: Colors.blue),),),
                    const SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 30)),
                      ),
                      child: const Text("Xóa, gỡ bỏ", style: TextStyle(color: Colors.black),),),
                  ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
