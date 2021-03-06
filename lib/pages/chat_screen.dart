import 'package:antalya/view/chat_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummy.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: CachedNetworkImageProvider(
                    dummy[i].avatarUrl
                  ),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummy[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummy[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummy[i].lastMessage,
                    style: new TextStyle(color: Colors.grey , fontSize: 15.0)),
                ),
                onTap: () => Navigator
                  .of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                    return new ChatDetail(name: dummy[i].name,imgurl:dummy[i].avatarUrl,chatId: dummy[i].chatId,id: dummy[i].id,peerId: dummy[i].peerId,);
                  })),
              )
            ],
          ),
    );
  }
}
