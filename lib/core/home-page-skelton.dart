import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePageSkelton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 600.0,
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    width: MediaQuery.of(context).size.width - 150,
                    height: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
              ),
              Container(
                child: Column(
                  children: <int>[0, 1, 2, 3, 4]
                      .map((_) => Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white54,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          height: 8.0,
                                          color: Colors.white,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 8.0,
                                          color: Colors.white,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Container(
                                          width: 40.0,
                                          height: 8.0,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
