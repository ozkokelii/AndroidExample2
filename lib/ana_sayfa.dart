import 'package:flutter/material.dart';
import 'models/data.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumVeriler = [
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
      Veri("Biz kimizin örneği", false, "içerik"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: <Widget>[
            Container(
                color: index % 2 == 0
                    ? Colors.red.shade200
                    : Colors.yellow.shade300,
                height: 100,
                width: double.infinity,
                child: Padding(
                  child: Text(tumVeriler[index].baslik),
                  padding: EdgeInsets.all(16),
                ))
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
