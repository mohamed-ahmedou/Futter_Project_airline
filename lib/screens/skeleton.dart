import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/constants.dart';

class Skeleton extends StatefulWidget {
  Skeleton({this.heidht, this.item});

  final double? heidht;

  final int? item;
  @override
  _SkeletonState createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.item ?? 8,
        itemBuilder: (BuildContext ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Shimmer.fromColors(
              baseColor: Constant.greylightycolor,
              highlightColor: Constant.whitecolor,
              child: box(),
            ),
          );
        });
  }

  Widget box() {
    return Container(
      height: widget.heidht ?? 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.grey[300]),
    );
  }
}
