import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 600.0,
        child: Shimmer.fromColors(
          baseColor: Colors.grey[400],
          highlightColor: Colors.grey[100],
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Column(
                  children: <int>[0, 1, 2, 3, 4, 5, 6]
                      .map((_) => Padding(
                            padding: const EdgeInsets.all(15.0),
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
