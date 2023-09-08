// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/view/utils/imgs.dart';

class Game with ChangeNotifier {
  int attackPlayer;
  int attackEnemy;
  String imageEnemyAttack;
  String imagePlayerAttack;
  Game({
     this.attackPlayer = 0,
     this.attackEnemy = 0,
     this.imageEnemyAttack = "",
     this.imagePlayerAttack = "",
  });
   
  void attackScissors(){
    
    int enemyAttack;
    enemyAttack = Random().nextInt(3);
    imagePlayerAttack = Images.scissor;
    notifyListeners();
    switch(enemyAttack){
      case 0:
      {
        imageEnemyAttack = Images.stone;
        attackEnemy ++;
        notifyListeners();
      }
      break;
      case 1:
      {
        imageEnemyAttack = Images.paper;
        attackPlayer ++;
        notifyListeners();
      }
      break;
      case 2:{
        imageEnemyAttack = Images.scissor;
        notifyListeners();
      }
    }
    defineWinner();
   
  }
  void attackStone(){
    int enemyAttack;
    enemyAttack = Random().nextInt(3);
    imagePlayerAttack = Images.stone;
    notifyListeners();
    switch(enemyAttack){
      case 0:
      {
        imageEnemyAttack = Images.stone;
        notifyListeners();
      }
      break;
      case 1:
      {
        imageEnemyAttack = Images.paper;
        attackEnemy ++;
        notifyListeners();
      }
      break;
      case 2:{
        imageEnemyAttack = Images.scissor;
        attackPlayer++;
        notifyListeners();
      }
    }
    defineWinner();
   
  }
 
  void attackPaper(){
    int enemyAttack;
    enemyAttack = Random().nextInt(3);
    imagePlayerAttack = Images.paper;
    notifyListeners();
    switch(enemyAttack){
      case 0:
      {
        imageEnemyAttack = Images.stone;
        attackPlayer++;
        notifyListeners();
      }
      break;
      case 1:
      {
        imageEnemyAttack = Images.paper;
        notifyListeners();
      }
      break;
      case 2:{
        imageEnemyAttack = Images.scissor;
        attackEnemy++;

        notifyListeners();
      }
    }
    defineWinner();
   
  
  }


  
  void defineWinner(){

    if((attackPlayer == 9 && attackPlayer > attackEnemy ) ){
      attackPlayer = 0;
      attackEnemy = 0;

  notifyListeners();
    } 
    else if (attackEnemy ==9 && attackEnemy > attackPlayer ){
      attackEnemy = 0;
      attackPlayer = 0;
      notifyListeners();
    }

  }
}
