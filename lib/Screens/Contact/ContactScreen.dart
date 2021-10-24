import 'package:flutter/material.dart';
import 'package:hackharvard21/styles/text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Contacts',
              style: textStyleBlack(FontWeight.w400, 22.0),
            ),
            SizedBox(
              height: 30,
            ),
            Wrap(
              children: [
                card(
                    'https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/01/Yellow_Female_Phone_1296x728-header.jpg?w=1155&h=1528',
                    'Diana',
                    'Daughter'),
                card(
                    'https://i.guim.co.uk/img/media/894d6048024fb4868ce5b55a44e6dbba59840c26/0_243_3376_2024/master/3376.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9c1f248836490811ff1d19e6826dc54d',
                    'Pike',
                    'Nephew'),
                card(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Tom_Hiddleston_%2827992938324%29_%28cropped%29.jpg/260px-Tom_Hiddleston_%2827992938324%29_%28cropped%29.jpg',
                    'Tom',
                    'Brother'),
              ],
            )
          ],
        ));
  }

  Widget card(image, name, who) {
    return InkWell(
      onTap: () async {
        print('clicked');

        await launch("tel:123456");
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 15.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Center(child: Text(name)),
              subtitle: Center(child: Text(who)),
            ),
          ],
        ),
      ),
    );
  }
}
