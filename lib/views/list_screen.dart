import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_radio_flutter/widgets/featured_card.dart';
import 'package:online_radio_flutter/widgets/station_list_item.dart';

import '../models/station.dart';
import '../widgets/container_card.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<dynamic>> _loadStationsList() async {
    final raw =
        await DefaultAssetBundle.of(context).loadString("assets/sample.json");
    return jsonDecode(raw);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFEEEEEE),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ContainerCard(
                title: "Featured",
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => const FeaturedCard(),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            Expanded(
              flex: 2,
              child: FutureBuilder<List<dynamic>>(
                future: _loadStationsList(),
                builder: (context, snapshot) {
                  debugPrint(snapshot.data.toString());
                  if (!snapshot.hasData) {
                    return const ContainerCard(title: "Error loading stations");
                  } else {
                    final stations = snapshot.data!;
                    return ContainerCard(
                      title: "All Stations",
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 4),
                          itemCount: stations.length,
                          itemBuilder: (context, index) {
                            return StationListItem(station: stations[index]);
                          },
                        ),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
