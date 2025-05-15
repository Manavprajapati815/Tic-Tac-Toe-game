import 'package:get/get.dart';

class Controller extends GetxController {
  RxList<String> gameValue = ["", "", "", "", "", "", "", "", ""].obs;
  
  RxBool isx = false.obs;
  void addValue(int index){
    if(isx.value){
      gameValue[index] = "x";
      isx.value=!isx.value;
    }
    else{
      gameValue[index] = "O";
       isx.value=!isx.value;
    }
   print(isx);

  }


}
