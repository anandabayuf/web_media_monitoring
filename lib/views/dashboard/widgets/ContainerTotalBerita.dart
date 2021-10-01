import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContainerTotalBerita extends StatelessWidget {
  late String _keyword;
  late int newsTotal;

  ContainerTotalBerita(String keyword, int newsTotal){
    this._keyword = keyword;
    this.newsTotal = newsTotal;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 300,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: HexColor("#707070")),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Image.asset("assets/icons/newspaper.png", height: 32.0, width: 32.0,),
          Text(
            "Jumlah berita yang mengandung \"${this._keyword}\"",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontWeight: FontWeight.w100
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0,),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: "${this.newsTotal}",
                  style: TextStyle(
                    fontWeight: FontWeight.w900
                  )
                ),
                TextSpan(
                  text: "   Berita"
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}