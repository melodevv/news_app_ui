import 'package:flutter/material.dart';
import 'package:newsapp_flutter_ui/models/news_model.dart';

class BreakingNewsCard extends StatefulWidget {
  BreakingNewsCard(this.data, {super.key});
  NewsData data;
  @override
  State<BreakingNewsCard> createState() => _BreakingNewsCardState();
}

class _BreakingNewsCardState extends State<BreakingNewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border:
            Border.all(width: 5.0, style: BorderStyle.solid, color: Colors.red),
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(widget.data.urlToImage!),
        ),
      ),
    );
  }
}
