
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First Flutter App"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            context: context,color: Color(0xFF9966FF), blocktext: "POP C#3",imgpat:"asset/image/pop.jpg",text:"นายอมรเทพ มุงธิสาร",text1: "สาขาวิทยาการคอมพิวเตอร์และสารสนเทศ"),
          Card(context: context, color: Color(0xFFF44336), blocktext: "TAR C#3",imgpat:"asset/image/getar.jpg",text:"นายสนธยา ช่วยบุญเทียม",text1: "สาขาวิทยาการคอมพิวเตอร์และสารสนเทศ"),
          Card(context: context, color: Color(0xFFFF00FF), blocktext: "NAM C#3",imgpat:"asset/image/num.jpg",text:"นางสาวศิรดา ประวัดศรี",text1: "สาขาวิทยาการคอมพิวเตอร์และสารสนเทศ"),
          Card(context: context, color: Color(0xFFCCFF66), blocktext: "TIW C#3",imgpat:"asset/image/tiw.jpg",text:"นายอรุณ ปัญญาจา",text1: "สาขาวิทยาการคอมพิวเตอร์และสารสนเทศ"),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgpat,
      required String text,
      required String text1,}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(name: blocktext, img: imgpat,texts:text,texts1:text1,)));
        },
        child: Column(
          children: [
            Image.asset(
              imgpat,
              width: 200,
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  //margin: EdgeInsets.all(10),
                  color: color,
                  child: Text(blocktext)
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.name, required this.img,required this.texts,required this.texts1});
  String name;
  String img;
  String texts;
  String texts1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children:[Image.asset(img),Text(name) , Text(texts) , Text(texts1)
            ],
          ),
        ));
  }
}
