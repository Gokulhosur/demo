// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
// import 'package:flutter_xlider/flutter_xlider.dart';
//import 'dart:ui' as ui;
import 'package:get/get.dart';

import 'choosepetpage.dart';
import 'main.dart';

//import 'package:dart_image_slider/dart_image_slider.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final HomePageController controller = Get.put(HomePageController());

  // TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
//  late ui.Image customImage;
//   //double sliderValue = 0.0;

//   Future<ui.Image> loadImage(String assetPath) async {
//     ByteData data = await rootBundle.load(assetPath);
//     ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
//     ui.FrameInfo fi = await codec.getNextFrame();

//     return fi.image;
//   }

//   @override
//   void initState() {
//     loadImage('images/images.png').then((image) {
//       setState(() {
//         customImage = image;
//       });
//     });

//     super.initState();
//   }
// Slider _getSlider() {
// return Slider(
//   value: controller.value.toDouble(),
//   max: 100,
//   divisions: 10,
//   //label: controller.value.round().toString(),
//   onChanged: (double value) {
//     // setState(() {
//     //   _currentValue = value;
//     // });
//   },
// );
// }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
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
                            children: [Text("${controller.value}% Completed")],
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        "images/hi.jpg",
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
                            "Share your adorable pet name",
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                          //  Obx(() =>
                          TextField(
                        controller: controller.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Your pets name',
                        ),
                      ),
                      // ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            //controller.name = name.toString();
                            //controller.increment;
                            controller.goToNexPage();
                            //Get.to(() => (ChoosePetPage()));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),

// DartImageSlider(
//       slider: _getSlider(),
//       imagePath: 'assets/button.png',
//     ),

              //  FlutterSlider(
              //         values: [0,controller.value.toDouble()],
              //         rangeSlider: true,
              //         max: 25000,
              //         min: 0,
              //         step: FlutterSliderStep(step: 100),
              //         jump: true,
              //         trackBar: FlutterSliderTrackBar(
              //           inactiveTrackBarHeight: 2,
              //           activeTrackBarHeight: 3,
              //         ),
              //         disabled: false,
              //         handler: customHandler(Icons.chevron_right),
              //         rightHandler: customHandler(Icons.chevron_left),
              //         tooltip: FlutterSliderTooltip(
              //           leftPrefix: Icon(
              //             Icons.attach_money,
              //             size: 19,
              //             color: Colors.black45,
              //           ),
              //           rightSuffix: Icon(
              //             Icons.attach_money,
              //             size: 19,
              //             color: Colors.black45,
              //           ),
              //           textStyle: TextStyle(fontSize: 17, color: Colors.black45),
              //         ),
              //         onDragging: (handlerIndex, lowerValue, upperValue) {
              //           controller.value = upperValue;
              //           setState(() {});
              //         },
              //       ),
              //  SliderTheme(
              //     data:  SliderThemeData(
              //       trackHeight: 28,
              //       inactiveTrackColor: Colors.grey.shade300,
              //       activeTrackColor: const Color(0xFFFFE900),
              //       thumbShape: SliderThumbImage(customImage),
              //     ),
              //     child: Slider(
              //       value: 50,
              //       min: 0,
              //       max: 100,
              //       onChanged: (value) {},
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
//  customHandler(IconData icon) {
//     return FlutterSliderHandler(
//       decoration: BoxDecoration(),
//       child: Container(
//         child: Container(
//           margin: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//               color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
//           child: Icon(
//             icon,
//             color: Colors.white,
//             size: 23,
//           ),
//         ),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           shape: BoxShape.circle,
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.blue.withOpacity(0.3),
//                 spreadRadius: 0.05,
//                 blurRadius: 5,
//                 offset: Offset(0, 1))
//           ],
//         ),
//       ),
//     );
//   }

//   class SliderThumbImage extends SliderComponentShape {
//   final ui.Image image;

//   SliderThumbImage(this.image);

//   @override
//   Size getPreferredSize(bool isEnabled, bool isDiscrete) {
//     return const Size(0, 0);
//   }

//   @override
//   void paint(PaintingContext context, Offset center,
//       {required Animation<double> activationAnimation,
//       required Animation<double> enableAnimation,
//       required bool isDiscrete,
//       required TextPainter labelPainter,
//       required RenderBox parentBox,
//       required SliderThemeData sliderTheme,
//       required TextDirection textDirection,
//       required double value,
//       required double textScaleFactor,
//       required Size sizeWithOverflow}) {
//     final canvas = context.canvas;
//     final imageWidth = image.width;
//     final imageHeight = image.height;

//     Offset imageOffset = Offset(
//       center.dx - (imageWidth / 2),
//       center.dy - (imageHeight / 2),
//     );

//     Paint paint = Paint()..filterQuality = FilterQuality.high;

//     canvas.drawImage(image, imageOffset, paint);
//   }
// }
