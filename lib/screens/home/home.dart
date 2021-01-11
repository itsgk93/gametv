import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gametv/core/exception.dart';
import 'package:gametv/core/loading-list.dart';
import 'package:gametv/screens/home/customList.dart';
import 'package:gametv/screens/home/store/store.dart';
import 'package:gametv/screens/home/tournamentBoard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final store = OverviewStore();

  @override
  void initState() {
    super.initState();
    store.getUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60), // 44 is the height
        child: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white.withOpacity(.7),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            splashColor: Colors.black,
            onPressed: () {},
          ),
          title: Container(
              // alignment: Alignment.centerLeft,
              child: Text(
            'FlyingWolf',
            style: TextStyle(color: Colors.black),
          )),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Observer(builder: (context) {
          return store.hasException == true
              ? ExceptionPage()
              : Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 25, 25, 5),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: InkWell(
                                onTap: () => {},
                                child: Image.asset(
                                  "assets/images/profile.png",
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Simon Baker',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                FlatButton(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.blue.shade600)),
                                    color: Colors.blue,
                                    onPressed: null,
                                    height: 28,
                                    child: Row(
                                      children: [
                                        Text(
                                          '2250    ',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.shade600,
                                          ),
                                        ),
                                        Text(
                                          'Elo rating',
                                          style: TextStyle(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      TournamentBorad(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 22),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Recommended for you',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      !store.loading
                          ? CustomList(store.cardData)
                          : LoadingList()
                    ],
                  ),
                );
        }),
      ),
    );
  }
}
