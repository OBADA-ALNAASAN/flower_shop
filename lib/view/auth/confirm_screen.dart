import 'package:flower_shop/controller/auth/confirmcodecontroller.dart';
import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/core/constant/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ConfirmcodecontrollerImp(), fenix: true);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: GetBuilder<ConfirmcodecontrollerImp>(builder: (controller) {
        return controller.statusRequest == StatusRequest.loading
            ? const Center(child: CircularProgressIndicator())
            : Form(
                key: controller.formstate,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 320.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(80))),
                        child: Center(
                          child: Stack(
                            children: [
                              Center(
                                child: Image.asset(AppImageAsset.blueflower,
                                    width: 250.w, height: 220.h),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new,
                                    color: AppColors.darkgray,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Get.back();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Verification Code'.tr,
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              'Pleas enter verification code sent to Email address .....@Gmail.com'
                                  .tr,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Valid to 10 minuts'.tr,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(height: 4.h),
                            InkWell(
                              onTap: () {
                                controller.resend2facode();
                              },
                              child: Text(
                                'Re send code'.tr,
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                            SizedBox(height: 25.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(6, (index) {
                                return Center(
                                  child: SizedBox(
                                    width: 35,
                                    height: 30,
                                    child: TextField(
                                      controller:
                                          controller.textcontrollers[index],
                                      focusNode: controller.focusNodes[index],
                                      onChanged: (value) {
                                        controller.handleOtpChange(
                                            value, index);
                                      },
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      decoration: InputDecoration(
                                        hintText: "*",
                                        counterText: '',
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        // Use contentPadding here
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10
                                                .h), // Adjust vertical padding
                                      ),
                                      style: TextStyle(
                                        fontSize: 20
                                            .sp, // Adjust your font size here if needed
                                        height:
                                            1, // Adjust the line height if needed
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                            SizedBox(height: 15.h),
                            Text(
                              'Verification code consists of\nnumbers and letters '
                                  .tr,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            SizedBox(height: 20.h),
                            Center(
                              child: GestureDetector(
                                onTap: () async {
                                  controller.goToBottom(controller.getOtp());
                                },
                                child: Container(
                                  width: 260.w,
                                  height: 58.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEE5FF),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Submit'.tr,
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16.sp,
                                      color: AppColors.purple,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
