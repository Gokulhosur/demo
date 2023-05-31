import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'choosebreedpage.dart';
import 'main.dart';

class ChoosePetPage extends StatefulWidget {
  const ChoosePetPage({super.key});

  @override
  State<ChoosePetPage> createState() => _ChoosePetPageState();
}

class _ChoosePetPageState extends State<ChoosePetPage> {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/jooju.jpg",
                          width: 200,
                          height: 50,
                        ),
                        TextButton(
                          child: Text("Skip"),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackShape: RectangularSliderTrackShape(),
                            trackHeight: 10.0,
                            thumbColor: Colors.orange[600],
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          ),
                          child: Slider(
                            value: controller.value.toDouble(),
                            onChanged: (value) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text("${controller.value+10}% Completed")],
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        "images/paw2.png",
                        width: 70,
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "your adorable pet is a...",
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              print("card is tapped.");
                            },
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/dog.png",width: 50,height: 70,),
                                  Text("Dog")
                                ],
                              ),
                            ),
                          ),
                        ),
                         Expanded(
                          flex: 1,
                           child: InkWell(
                            onTap: () {
                              print("card is tapped.");
                            },
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/cat.jpg",width: 50,height: 70,),
                                  Text("cat")
                                ],
                              ),
                            ),
                                                 ),
                         )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [InkWell(
                            onTap: () {
                              print("card is tapped.");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Card(
                                child: Text("Other"),
                              ),
                            ),
                                                 ),],),
                    )
                    
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => (ChooseBreedPage()));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
