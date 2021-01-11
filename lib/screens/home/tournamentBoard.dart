import 'package:flutter/material.dart';

class TournamentBorad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * .045),
        child: Row(
          children: [
            Container(
                height: 80,
                width: MediaQuery.of(context).size.width * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '34',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text('Tournaments',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    Text('played',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.amber.shade900, Colors.amber.shade700]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)))),
            SizedBox(
              width: 1,
            ),
            Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '09',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text('Tournaments',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  Text('won',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
              width: MediaQuery.of(context).size.width * .3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.purple.shade900,
                      Colors.purple.shade600,
                      Colors.purple.shade400
                    ]),
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Container(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '26%',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text('Winning',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    Text('percentage',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.deepOrange.shade800,
                          Colors.deepOrange.shade300
                        ]),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)))),
          ],
        ));
  }
}
