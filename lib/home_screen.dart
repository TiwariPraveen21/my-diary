import 'package:flutter/material.dart';
import 'package:my_diary/custom_widgets/Mediterran_diet.dart';
import 'package:my_diary/custom_widgets/linear_progress_bar.dart';
import 'package:my_diary/custom_widgets/meals.dart';
import 'package:my_diary/custom_widgets/my_diary.dart';
import 'package:my_diary/custom_widgets/text_with_border.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 245, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                const MyDiary(),
                const SizedBox(height: 20),
                const Mediterraneandiet(
                  leading: "Mediterranean diet",
                  trailing: "Details",
                  icon: Icon(Icons.arrow_forward),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        //First children for text part and progress indicator part
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //for text partr
                            const Column(
                              children: [
                                // first text part design
                                EatenAndBurned(
                                  title: "Eaten",
                                  icon: Icon(
                                    Icons.water_drop,
                                    size: 35,
                                    color: Colors.blueAccent,
                                  ),
                                  number: "1127",
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(height: 30),
                                EatenAndBurned(
                                    title: "Burned",
                                    icon: Icon(
                                      Icons.fire_hydrant,
                                      size: 45,
                                      color: Colors.purple,
                                    ),
                                    number: "102",
                                    color: Colors.purple),
                              ],
                            ),
                            CircularPercentIndicator(
                              radius: 70.0,
                              lineWidth: 10.0,
                              backgroundWidth: 4,
                              backgroundColor:
                                  const Color.fromARGB(255, 179, 196, 251),
                              percent: 0.45,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "1503",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF4A51D9)),
                                  ),
                                  Text(
                                    "kcal left",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              progressColor: const Color(0xFF4A51D9),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          indent: 32,
                          thickness: 0.5,
                        ),
                        const SizedBox(height: 20),
                        //ssecond children for linear progress indicator
                        const Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Expanded(
                                child: LinearProgressBar(
                                  heading: "Carbs",
                                  progressColor:
                                      Color.fromARGB(255, 90, 97, 228),
                                  progressPercent: 0.7,
                                  bgColor: Color.fromARGB(255, 179, 181, 233),
                                  weight: "12 gram Left",
                                ),
                              ),
                              Expanded(
                                child: LinearProgressBar(
                                  heading: "Protein",
                                  progressColor: Colors.purple,
                                  progressPercent: 0.5,
                                  bgColor: Color.fromARGB(255, 224, 166, 235),
                                  weight: "30 gram Left",
                                ),
                              ),
                              Expanded(
                                child: LinearProgressBar(
                                  heading: "Fat",
                                  progressColor: Colors.amber,
                                  progressPercent: 0.3,
                                  bgColor: Color.fromARGB(255, 238, 218, 157),
                                  weight: "10 gram Left",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Mediterraneandiet(
                    leading: "Meals Today",
                    trailing: "Customize",
                    icon: Icon(Icons.arrow_forward)),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Meals(
                        heading: "BreakFast",
                        title1: "Bread",
                        title2: "Peanut Butter",
                        title3: "Apple",
                        color1: const Color.fromARGB(255, 255, 95, 95),
                        color2: const Color.fromARGB(255, 255, 185, 174),
                        img: Image.asset(
                          "assets/images/food7.png",
                          width: 100,
                        ),
                        kcal: "525",
                      ),
                      const SizedBox(width: 15),
                      Meals(
                        heading: "Lunch",
                        title1: "Salmon",
                        title2: "Mixed veggies",
                        title3: "Avocado",
                        color1: const Color(0xFF7183E7),
                        color2: const Color(0xFF6067E0),
                        img: Image.asset(
                          "assets/images/food4.png",
                          width: 100,
                        ),
                        kcal: "602",
                      ),
                      const SizedBox(width: 15),
                      Meals(
                        heading: "Snack",
                        title1: "Recommended",
                        title2: "Peanut Butter",
                        title3: "Apple",
                        color1: const Color.fromARGB(255, 254, 90, 142),
                        color2: const Color.fromARGB(255, 253, 156, 187),
                        img: Image.asset(
                          "assets/images/food3.png",
                          width: 110,
                        ),
                        kcal: "525",
                      ),
                    ],
                  ),
                ),
                const Mediterraneandiet(
                  leading: "Body measurement",
                  trailing: "Today",
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
