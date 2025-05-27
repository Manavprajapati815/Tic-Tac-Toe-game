import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart'; 


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Tic Tac Toe Game"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Obx(()=>(Container(
                  padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: controller.isx.value == false ? const Color.fromARGB(255, 56, 122, 175): Colors.grey[800],
                  ),
                  child: Text("O",
                  style: TextStyle(
                  fontSize: 50,color: Colors.white,
                  
                  fontWeight: FontWeight.bold,
                ),),
          ))
                ),
                Obx(()=>(Container(
                  padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: controller.isx.value == false ?Colors.grey[800]:  const Color.fromARGB(255, 56, 122, 175),
                  ),
                  child: Text("X",
                  style: TextStyle(
                  fontSize: 50,color: Colors.white,
                  
                  fontWeight: FontWeight.bold,
                ),),))
          
                ),
              ],
              ),
              SizedBox(height: 50,),
              Expanded(
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                     controller.addValue(index);
                      
                      },
                      child: Container(
                        margin:  EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Center(
                          child: Obx(() =>Text(
                            controller.gameValue[index],
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),) 
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
