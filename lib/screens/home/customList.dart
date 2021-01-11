import 'package:flutter/material.dart';
import 'package:gametv/screens/home/modal.dart';
import 'package:gametv/screens/home/store/card-item.dart';
import 'package:mobx/mobx.dart';

class CustomList extends StatefulWidget {
  final ObservableList<CardItem> data;
  CustomList(this.data);
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    // print(widget.data);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          ListView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            children: widget.data != null
                ? widget.data
                    .map<Widget>((val) {
                      return Container(
                        height: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                child: Image.network(
                                  val.cover_url,
                                  // height: 150,
                                )),
                            Positioned(
                              bottom: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width - 40,
                                  height: 65,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            val.name.length > 35
                                                ? val.name.substring(0, 35)
                                                : val.name,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            val.game_name,
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    })
                    .where((child) => child != null)
                    .toList()
                : null,
            scrollDirection: Axis.vertical,
          ),
        ],
      ),
    );
  }
}
