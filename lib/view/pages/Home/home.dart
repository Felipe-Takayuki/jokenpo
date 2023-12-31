import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/models/partida.dart';
import 'package:pedra_papel_tesoura/view/utils/imgs.dart';
import 'package:pedra_papel_tesoura/view/widgets/dividerWidget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  
  @override
  Widget build(BuildContext context) {
    Game game = Game();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    double sizebutton = height * 20/100;
    Color colorclicked = Color.fromRGBO(196, 191, 191, 1);
    double sizecount =height * 18/100;
    return  Scaffold(
      body: ListenableBuilder(
         listenable: game,
         builder: (context, child) => 
         Center(
          child: Column(
            
            children: [
              const Spacer(flex: 2,),
              SizedBox(
                width: sizebutton,
                height: sizebutton,
              child: game.imageEnemyAttack.isNotEmpty ? Image.asset(game.imageEnemyAttack) : const Text(""),
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black
                ),
                width:sizecount ,
                height: sizecount,
                child:  Center(child: Text(game.attackEnemy.toString(), style: TextStyle(fontFamily: 'MinecraftFont', color: Colors.white, fontSize: height * 8/100),)),
              ),
              const Spacer(),
              MyDividerWidget(mensage: game.mensage),
              const Spacer(flex: 2,),
              Container(
               decoration: const BoxDecoration(
                 color: Colors.black
               ),
               width:sizecount ,
               height: sizecount,
               child:  Center(child: Text(game.attackPlayer.toString(), style: TextStyle(fontFamily: 'MinecraftFont', color: Colors.white, fontSize: height * 8/100),)),
              ),
              const Spacer(),
                 
                SizedBox(
                  width: sizebutton,
                  height: sizebutton,
                child: game.imagePlayerAttack.isNotEmpty ? Image.asset(game.imagePlayerAttack) : const Text(""),
                ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    GestureDetector(onTap: game.attackStone, child: Container(
                     width: sizebutton,
                     height: sizebutton,
                     padding: const EdgeInsets.all(10),
                     decoration:  BoxDecoration(color: const Color.fromRGBO(135, 135, 140, 1,),
                       border: Border(bottom:  BorderSide(width: 4, color: game.btn1 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked), top: BorderSide(width: 4, color :game.btn1 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked),
                     left:  BorderSide(width: 4, color: game.btn1 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked), right:  BorderSide(width: 4, color: game.btn1 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked))
                     
                     ),
                              
                     child: Image.asset(Images.stone, fit: BoxFit.contain),
                     
                                    ),),
                     GestureDetector(onTap: game.attackPaper, child: Container(
                     width: sizebutton,
                     height: sizebutton,
                     padding: const EdgeInsets.all(10),
                     decoration:  BoxDecoration(color: const Color.fromRGBO(135, 135, 140, 1,),
                       border: Border(bottom:  BorderSide(width: 4, color: game.btn2 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked), top: BorderSide(width: 4, color :game.btn2 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked),
                     left:  BorderSide(width: 4, color: game.btn2 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked), right:  BorderSide(width: 4, color: game.btn2 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked))
                     
                     ),
                              
                     child: Image.asset(Images.paper, fit: BoxFit.contain),
                     
                                    ),),
                     
                    GestureDetector(onTap: game.attackScissors, child: Container(
                     width: sizebutton,
                     height: sizebutton,
                     padding: const EdgeInsets.all(10),
                     decoration:  BoxDecoration(color: const Color.fromRGBO(135, 135, 140, 1,),
                       border: Border(bottom:  BorderSide(width: 4, color: game.btn3 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked), top: BorderSide(width: 4, color :game.btn3 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked),
                     left:  BorderSide(width: 4, color: game.btn3 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked), right:  BorderSide(width: 4, color: game.btn3 == false ? const Color.fromRGBO(93, 93, 93, 1) : colorclicked))
                     
                     ),
                              
                     child: Image.asset(Images.scissor, fit: BoxFit.contain),
                     
                                    ),),
                   
                 ],
                )
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}

//rgba(135, 135, 140, 1)
//rgba(93, 93, 93, 1)