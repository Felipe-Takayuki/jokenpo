# pedra, papel e tesoura

### Este é um projeto apenas de estudo pessoal, que é um básico pedra, papel e tesoura(single player) feito em Flutter.

### As regras são definidas na pasta `lib/models/partida.dart`

Aonde eu defini oque acontece em cada tipo de “ataque” , que é aleatorizado o ataque da “maquina” e se houve aumento de pontos do jogador ou não atualizando o contador

ex:

```dart
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
  }
```

e outra regra importante colocada foi limite de pontos para definir o vencedor **(9)**:

```dart
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
```