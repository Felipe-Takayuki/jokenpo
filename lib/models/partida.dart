// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/view/utils/imgs.dart';

class Game with ChangeNotifier {
  int attackPlayer;
  int attackEnemy;
  String imageEnemyAttack;
  String imagePlayerAttack;
  String mensage;
  bool btn1, btn2, btn3;
  Game({
     this.attackPlayer = 0,
     this.attackEnemy = 0,
     this.imageEnemyAttack = "",
     this.imagePlayerAttack = "",
     this.mensage = "",
     this.btn1 = false,
     this.btn2 = false,
     this.btn3 = false
  });
   
  void attackScissors(){
   btn3 = true;
    btn1= false;
    btn2= false;
    int enemyAttack;
    enemyAttack = Random().nextInt(3);
    imagePlayerAttack = Images.scissor;
   
    switch(enemyAttack){
      case 0:
      {
        imageEnemyAttack = Images.stone;
        attackEnemy ++;
      }
      break;
      case 1:
      {
        imageEnemyAttack = Images.paper;
        attackPlayer ++;
      }
      break;
      case 2:{
        imageEnemyAttack = Images.scissor;
      }
    }
    defineWinner();
    notifyListeners();
  }
  void attackStone(){
   
     btn1 = true;
    btn2 = false;
    btn3 = false;
    int enemyAttack;
    enemyAttack = Random().nextInt(3);
    imagePlayerAttack = Images.stone;
   
    switch(enemyAttack){
      case 0:
      {
        imageEnemyAttack = Images.stone;
      }
      break;
      case 1:
      {
        imageEnemyAttack = Images.paper;
        attackEnemy ++;
      }
      break;
      case 2:{
        imageEnemyAttack = Images.scissor;
        attackPlayer++;
      }
    }
    defineWinner();
    notifyListeners();
  }
 
  void attackPaper(){
     btn2 = true;
    btn1 = false;
    btn3 = false;
    
  
    int enemyAttack;
    enemyAttack = Random().nextInt(3);
    imagePlayerAttack = Images.paper;
   
    switch(enemyAttack){
      case 0:
      {
        imageEnemyAttack = Images.stone;
        attackPlayer++;
      }
      break;
      case 1:
      {
        imageEnemyAttack = Images.paper;
      }
      break;
      case 2:{
        imageEnemyAttack = Images.scissor;
        attackEnemy++;
      }
    }
    defineWinner();
    notifyListeners();
  
  }


  
  void defineWinner(){

    if((attackPlayer == 9 && attackPlayer > attackEnemy ) ){
      attackPlayer = 0;
      attackEnemy = 0;
      mensage = "Venceu!";
 
    } 
    else if (attackEnemy ==9 && attackEnemy > attackPlayer ){
      attackEnemy = 0;
      attackPlayer = 0;
      mensage = "Perdeu!";
    }
    else{
      mensage = "";
    }
   notifyListeners();
  }

}
