import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/station.dart';

class StationListItem extends StatelessWidget {
  const StationListItem({
    super.key,
    required this.station,
  });

  final dynamic station;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        decoration: const BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xAA202020),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 8.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    station["name"],
                    softWrap: false,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
