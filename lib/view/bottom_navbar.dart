import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Obx(() {
        return controller.pages[controller.selectedIndex.value];
      }),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Obx(() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(controller.pages.length, (index) {
                return Padding(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 6.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                          onTap: () {
                            controller.changeIndex(index);
                          },
                          child: Image.asset(controller.images[index],
                              height: 24.h)),
                      if (controller.selectedIndex.value == index)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            height: 4,
                            width: 40,
                            color:
                                index == 3 ? AppColors.blue : AppColors.purple,
                          ),
                        ),
                    ],
                  ),
                );
              })),
        ),
      );
    });
  }
}
