import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Balap Karung")),
            leading: Icon(Icons.home),
          ),
          body: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
              children: <Widget>[
                Image.network(
                    "https://asset.kompas.com/crops/DDG4wS8y51GR7u3I9Wuee-Goj1A=/2x92:1080x810/750x500/data/photo/2019/08/18/5d597525950b0.jpg"),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      "Balap Karung",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green[300],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        "Lomba ini sangat seru karena membutuhkan ketangkasan. Meski kelihatannya hanya memakai karung goni dan loncat-loncat saja, tapi sebenarnya lomba ini juga bisa membuat kita cepat lelah lho. Lomba ini rupanya didasari oleh fakta bahwa saat Indonesia dijajah oleh Jepang, para pribumi tak memiliki pakaian dan harus menggunakan karung goni. Padahal karung goni bertekstur kasar dan bisa membuat tubuh menjadi gatal. Jadi setelah merdeka, karung goni pun tak lagi dipakai dan malah digunakan lomba dengan cara diinjak-injak. Mungkin itu sebagai rasa syukur dan bahagia dari para rakyat karena tak harus memakai pakaian yang sangat tak nyaman itu lagi."),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      child: Image.asset('images/ratings.png'),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                    Container(
                      height: 50.0,
                      child: Text("1000 Vote"),
                      alignment: Alignment.center,
                    )
                  ],
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 5,
                  children: itemmenu,
                )
              ],
            )
            ],
          ),
        ));
  }
}

List<Itemmenu> itemmenu = [
  Itemmenu(
    title: '1.423.234x',
    icon: Icons.remove_red_eye,
    iconcolor: Colors.grey,
  ),
  Itemmenu(
    title: '56.997',
    icon: Icons.thumb_up,
    iconcolor: Colors.green,
  ),
  Itemmenu(
    title: '100',
    icon: Icons.thumb_down,
    iconcolor: Colors.red,
  ),
  Itemmenu(
    title: '1.209',
    icon: Icons.save,
    iconcolor: Colors.blue,
  ),
  Itemmenu(
    title: '1.400',
    icon: Icons.share,
    iconcolor: Colors.blue,
  )
];

class Itemmenu extends StatelessWidget {
  Itemmenu({this.title, this.icon, this.iconcolor});
  final String title;
  final IconData icon;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          child: Icon(icon, size: 20.0, color: iconcolor,),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12.0),
        )
      ],
    );
  }
}
