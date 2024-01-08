import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Container(
       // width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff213A50) , const Color(0xff071930)],
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget>[
            SizedBox(
              height: 100,
            ),

            CircleAvatar(
              radius:100,

              //child:  const Text('AG',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80,),),
              child: Image.asset('proPho.png'),

            ),
            SizedBox(
              height: 20,
            ),
            Text('Anshuman Gogoi',style: TextStyle(color: Colors.white,
            fontSize: 25,
              fontWeight: FontWeight.w900,

            ),),

            SizedBox(
              height: 15,
            ),
            Text(
              ' Flutter Developer based in Guwahati,India.',
              style:
              TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '#flutter_developer 📱',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w200

              ),
            ),

            SizedBox(
              height: 20,
            ),
            Text(
              'Connect with me ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        htmlOpenGithub();
                      },
                      child: Image.asset('github1.png',
                      height: 50,
                        color: Colors.white,
                      ),

                    ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: GestureDetector(
                     onTap: (){
                       htmlOpenLinkedin();
                     },
                     child: Image.asset('linkedin1.png',
                       height: 60,
                       color: Colors.white,
                     ),

                   ),

                 ),

                 GestureDetector(
                   onTap: (){
                     htmlDownloadResume();
                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       gradient: LinearGradient(
                         colors: [
                           const Color(0xffA2834D), const Color(0xffBC9A5F),
                         ]
                       ),
                     ),
                     child: Text('Download My resume',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,
                         fontWeight: FontWeight.bold,

                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),




               ]
              ,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Made with love using flutter web',
              style: TextStyle(
                 color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),




            
          ]
          ,
        ),
      ),
    );
  }
}

void htmlOpenGithub(){
  String url="https://github.com/cyberhypex";
  html.window.open(url,'github');

}
void htmlOpenLinkedin(){
  String url="https://www.linkedin.com/in/anshuman-gogoi-b99671211/";
  html.window.open(url,'linkedin');

}
void htmlDownloadResume(){
  String url="https://drive.google.com/file/d/1Hje5C-MlaXNb0q1vmipm_Apu5Exw79UM/view?usp=sharing";
  html.window.open(url,'resume');

}




