import 'package:flutter/material.dart';
import 'package:flutter_todo/controllers/tap_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(
          children: [
            GetBuilder<TapController>(builder: (_) {
                return Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0),
                  ),
                  child: Center(
                      child: Text(
                          controller.x.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )
                      )
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF89dad0),
                ),
                child: const Center(
                    child: Text(
                        "Increase",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )
                    )
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF89dad0),
                ),
                child: const Center(
                    child: Text(
                        "tap",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )
                    )
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
