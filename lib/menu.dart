import 'package:demo01/data.dart';
import 'package:demo01/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}
bool _isOpen = false;
bool _isOpen1 = false;
bool _isOpen2 = false;

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Menu',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
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
                itemMenu(urlImg: Data.url, name: "Lê Thế Lữ", comment: "Xem trang cá nhân của bạn",),
                itemMenu(urlImg: Data.urlStory, name: "11 trang của bạn", comment: '9+ dấu trang mới'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        itemMenuTag(icon: const Icon(Icons.image, color: Colors.green,), text: "Ảnh/Video", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.insert_emoticon, color: Colors.amber,), text: "Cảm xúc/Hoạt động", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.camera, color: Colors.red), text: "Video trực tiếp", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.gif, color: Colors.teal), text: "File GIF", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.mic, color: Colors.red), text: "Tổ chức buổi H&Đ", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.article_sharp), text: "Gắn thẻ sự kiện", onPressed: (){print("hello");}),
                      ],
                    ),
                    Column(
                      children: [
                        itemMenuTag(icon: const Icon(Icons.person_sharp, color: Colors.blue), text: "Gắn thẻ người khác", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.add_location_sharp, color: Colors.red), text: "Check in", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.camera_alt, color: Colors.blue), text: "Camera", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.announcement, color: Colors.red), text: "Yêu cầu đề xuất", onPressed: (){print("hello");}),
                        itemMenuTag(icon: const Icon(Icons.wysiwyg, color: Colors.pink), text: "Bố cục", onPressed: (){print("hello");}),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                ExpansionPanelList(
                  elevation: 0,
                  dividerColor: Colors.blue,
                  children: [
                    ExpansionPanel(
                      backgroundColor: Colors.transparent,
                      headerBuilder: (context, isOpen){
                        return Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.hands, color: Colors.blue,),
                            SizedBox(width: 10,),
                            Text("Nguồn lực cho cộng đồng", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),)
                          ],
                        );
                      },
                      body: SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                              ],
                            ),
                            Column(
                              children: [
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                                itemMenuTag(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                              ],
                            )
                          ],
                        ),
                      ),
                      isExpanded: _isOpen,
                    ),
                  ],

                  expansionCallback: (i, isOpen) =>
                  setState(() {
                    _isOpen =! isOpen;
                  }),
                ),
                const Divider(),
                ExpansionPanelList(
                  elevation: 0,
                  dividerColor: Colors.blue,
                  children: [
                    ExpansionPanel(
                      backgroundColor: Colors.transparent,
                      headerBuilder: (context, isOpen){
                        return Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.questionCircle, color: Colors.blue,),
                            SizedBox(width: 10,),
                            Text("Trợ giúp & hỗ trợ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),),
                          ],
                        );
                      },
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            itemMenuTagMenu(icon: const Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: const Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: const Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: const Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: const Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen1,
                    ),
                  ],

                  expansionCallback: (i, isOpen) =>
                      setState(() {
                        _isOpen1 =! _isOpen1;
                      }),
                ),
                const Divider(),
                ExpansionPanelList(
                  elevation: 0,
                  dividerColor: Colors.blue,
                  children: [
                    ExpansionPanel(
                      backgroundColor: Colors.transparent,
                      headerBuilder: (context, isOpen){
                        return Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.cogs, color: Colors.blue,),
                            SizedBox(width: 10,),
                            Text("Cài đặt & quyền riêng tư", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),),
                          ],
                        );
                      },
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            itemMenuTagMenu(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                            itemMenuTagMenu(icon: Icon(Icons.eleven_mp), text: "Hello",onPressed: (){}, comment: "text"),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen2,
                    ),
                  ],

                  expansionCallback: (i, isOpen) =>
                      setState(() {
                        _isOpen2 =! _isOpen2;
                      }),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  height: 40,
                  width: double.infinity,
                  child: InkWell(
                    onTap: (){
                      CupertinoActionSheet(
                        title: const Text("Bạn có chắc chắn sẽ đăng xuất không?"),
                        actions: [
                          CupertinoActionSheetAction(
                              onPressed: (){

                              },
                              child: const Text("Đăng xuất"))
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          onPressed: (){

                          },
                          child: Text("Cancel"),
                        ),
                      );
                    },
                      highlightColor: Colors.grey,
                      splashColor: Colors.black54,
                      child: const Center(child: Text("Đăng xuất"))),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  itemMenu({required String name, required String urlImg, required String comment}){
    return SizedBox(
      height: 65,
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  urlImg,
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
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Text(comment, style: const TextStyle(color: Colors.grey)),
                Container(
                  color: Colors.grey[300],
                  height: 1,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  itemMenuTag({required Icon icon,required String text, String comment = '',  required Function() onPressed}){
    return Padding(
      padding: const EdgeInsets.only(top : 10.0),
      child: GestureDetector(
        onTap: (){
          onPressed.call();
        },
        child: Container(
          height: 65,
          width: (MediaQuery.of(context).size.width - 26)/2,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
  itemMenuTagMenu({required Icon icon,required String text, String comment = '',  required Function() onPressed}){
    return Padding(
      padding: const EdgeInsets.only(top : 10.0),
      child: GestureDetector(
        onTap: (){
          onPressed.call();
        },
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
