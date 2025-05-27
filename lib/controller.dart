import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';

class Controller extends GetxController {
  RxList<String> gameValue = ["", "", "", "", "", "", "", "", ""].obs;
  
  RxBool iswinner = false.obs;
  RxBool isx = false.obs;
  RxInt click = 0.obs;

  void addValue(int index){
    if(gameValue[index] == ""){
      if(isx.value){
      gameValue[index] = "x";
      isx.value=!isx.value;
      click ++;
    }
    else{
      print("invalid click");
      gameValue[index] = "O";
       isx.value=!isx.value;
       click++;
    }
    
    chackWinner();
    
    if(iswinner.value==false){
    matchDrawMessage(click);
  }
  else{}
    } 
   print("Click $click");
  }

 
  
void matchDrawMessage(click){

if (click == 9){
  Get.defaultDialog(
    title: "Match Draw",
    cancel: Text("cancel"),
    confirm:TextButton(
      onPressed: (){
        
   gameValue.value=["", "", "", "", "", "", "", "", ""];
   click.value = 0 ;
   Get.back();
   exit(0);
      },
      child: Text("playAgain"),
    ),
  );  
}

}

void chackWinner(){

if(gameValue[0] == gameValue[1]&&
   gameValue[0] == gameValue[2]&&
   gameValue[0] !=""
){
 WinnerDialogbox();
}else{}
if(gameValue[0] == gameValue[4]&&
   gameValue[0] == gameValue[8]&&
   gameValue[0] != ""
){
 WinnerDialogbox();
}else{}
if(gameValue[0] == gameValue[3]&&
   gameValue[0] == gameValue[6]&&
   gameValue[0] !=""
){
 WinnerDialogbox();
}else{}
if(gameValue[1] == gameValue[4]&&
   gameValue[1] == gameValue[7]&&
   gameValue[1] !=""
){
 WinnerDialogbox();
}
else{}
if(gameValue[2] == gameValue[5]&&
   gameValue[2] == gameValue[8]&&
   gameValue[2] != ""
){
 WinnerDialogbox();
}
else{}
if(gameValue[3] == gameValue[4]&&
   gameValue[3] == gameValue[5]&&
   gameValue[3] !=""
){
 WinnerDialogbox();
}
else{}
if(gameValue[6] == gameValue[7]&&
   gameValue[6] == gameValue[8]&&
   gameValue[6] !=""
){
 WinnerDialogbox();
}
else{}

if(gameValue[2] == gameValue[4]&&
   gameValue[2] == gameValue[6]&&
   gameValue[2] !=""
){
 WinnerDialogbox();
}
else{}
}

void WinnerDialogbox(){
iswinner.value = true;
   Get.defaultDialog(

    title: "Winner",
    content: Column(
    mainAxisSize: MainAxisSize.min, // Add this to avoid layout overflow
      children: [
        Icon(Icons.confirmation_num_rounded,
        size: 50,
        color: const Color.fromARGB(255, 255, 133, 3),
        ),SizedBox(height: 10), 
        isx.value? const Text("X is winner",
        style: TextStyle(
          fontSize: 30
          ),
        ): const Text("O is winner",
        style: TextStyle(
          fontSize: 30
          ),
        ),
        Row(
          children: [
            ElevatedButton.icon(onPressed: (){Get.back();
            exit(0);}, icon: Icon(Icons.close), label: Text("Close"),),
            ElevatedButton.icon(onPressed: (){
   gameValue.value=["", "", "", "", "", "", "", "", ""];
   click.value = 0 ;
   iswinner.value==false;
   Get.back();}, icon: Icon(Icons.play_arrow), label: Text("Play Again"),),
          ],
        )
      ],
    )
   );
}

}
