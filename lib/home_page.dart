import 'package:demo01/search.dart';
import 'package:demo01/status_think.dart';
import 'package:demo01/widget/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'data.dart';
import 'widget/status/status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 34),
        ),
        actions: [
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
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
                color: Colors.black12, shape: BoxShape.circle),
            child: Center(
              child: InkWell(
                  onTap: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                    color: Colors.black,
                    size: 20,
                  )),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 45,
                        width: 45,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(Data.url),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                       Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const StatusPage()));
                          },
                            child: const SizedBox(
                              width: 100,
                              child:  Text("Bạn đang nghĩ gì?"),
                            )),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    button(
                      icon: const Icon(
                        Icons.camera,
                        color: Colors.red,
                      ),
                      text: "Phát trực tiếp",
                    ),
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.grey,
                        width: 50,
                        thickness: 2,
                      ),
                    ),
                    button(
                        icon: const Icon(Icons.image, color: Colors.green),
                        text: "Ảnh"),
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.grey,
                        width: 50,
                        thickness: 2,
                      ),
                    ),
                    button(
                        icon: const Icon(Icons.camera_alt_outlined,
                            color: Colors.purple),
                        text: "Phòng họp mặt"),
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 7,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Phòng họp mặt video & âm thanh",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.blue[100],
                              elevation: 0,
                              child: const Text(
                                "Tạo phòng họp mặt",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 7,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(top: 5.0, left: 5),
                              child: itemStory(),
                            )),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 7,
            ),
            ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey[300],
                    thickness: 7,
                  );
                },
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, index) =>
                    ItemStatus(url: Data.url, content: Data.content))
          ],
        ),
      ),
    );
  }

  button({required Icon icon, required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        ),
      ],
    );
  }
}
