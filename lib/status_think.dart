import "package:flutter/material.dart";
import 'data.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.clear,
              color: Colors.black,
            )),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        Data.url,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Chào Thế Lữ!",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 24),
                      ),
                      Text("Bạn đang nghĩ gì?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 2,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 10),
                  child: Text(
                    "Bạn viết gì đi ...",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      item(icon: const Icon(Icons.image, color: Colors.green,), text: "Ảnh/Video", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.insert_emoticon, color: Colors.amber,), text: "Cảm xúc/Hoạt động", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.camera, color: Colors.red), text: "Video trực tiếp", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.gif, color: Colors.teal), text: "File GIF", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.mic, color: Colors.red), text: "Tổ chức buổi H&Đ", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.article_sharp), text: "Gắn thẻ sự kiện", onPressed: (){print("hello");}),
                    ],
                  ),
                  Column(
                    children: [
                      item(icon: const Icon(Icons.person_sharp, color: Colors.blue), text: "Gắn thẻ người khác", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.add_location_sharp, color: Colors.red), text: "Check in", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.camera_alt, color: Colors.blue), text: "Camera", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.announcement, color: Colors.red), text: "Yêu cầu đề xuất", onPressed: (){print("hello");}),
                      item(icon: const Icon(Icons.wysiwyg, color: Colors.pink), text: "Bố cục", onPressed: (){print("hello");}),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }

  item({required Icon icon,required String text,  required Function() onPressed}){
    return Padding(
      padding: const EdgeInsets.only(top : 10.0),
      child: GestureDetector(
        onTap: (){
          onPressed.call();
        },
        child: Container(
          height: 65,
          width: (MediaQuery.of(context).size.width - 24)/2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                icon,
                Text(text, style: const TextStyle(fontSize: 13),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
