import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemStatus extends StatefulWidget {
  String url ;
  String content;
  ItemStatus({Key? key, required this.url,required this.content}) : super(key: key);

  @override
  _ItemStatus createState() => _ItemStatus();
}

class _ItemStatus extends State<ItemStatus> {

  bool checkLike = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: Colors.teal,
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "My User",
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        const Text(
                          "30" "phút",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Container(
                          height: 1,
                          width: 1,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.globeAsia,
                          size: 15,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.content,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.network(
                widget.url,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.thumbsUp,
                        color: checkLike ? Colors.blue :Colors.grey,
                        size: 18,
                      ),
                    ),
                    Text(
                      '2,7K',
                      style: TextStyle(color: Colors.grey[400], fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "31 bình luận",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('1 lượt chia sẻ',
                        style: TextStyle(color: Colors.grey)),
                    const SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.teal,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down_outlined),
                  ],
                )
              ],
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      checkLike =!checkLike;
                    });
                  },
                  child: buttonLike(
                      checkLike: checkLike,
                      icon:  FaIcon(
                        FontAwesomeIcons.thumbsUp,
                        size: 20,
                        color: checkLike ? Colors.blue : Colors.grey,
                      ),
                      text: "Like"),
                ),
                button(
                    icon: const FaIcon(
                      FontAwesomeIcons.commentAlt,
                      size: 20,
                      color: Colors.grey,
                    ),
                    text: "Bình luận"),
                button(
                    icon: const FaIcon(
                      FontAwesomeIcons.share,
                      size: 30,
                      color: Colors.grey,
                    ),
                    text: "Chia Sẻ"),
              ],
            )
          ],
        ),
        Positioned(
            top: 10,
            right: 10,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "...",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.clear,
                  color: Colors.grey,
                )
              ],
            ))
      ]),
    );
  }


  buttonLike({required FaIcon icon, required String text,required bool checkLike}) {
    return Center(
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style:  TextStyle(
                color: checkLike?Colors.blue :Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  button({required FaIcon icon, required String text}) {
    return Center(
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
