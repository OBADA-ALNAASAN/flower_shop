import 'package:flower_shop/constant/app_color.dart';
import 'package:flower_shop/constant/app_image.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 260.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: AppColors.blue,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(60))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                // Logo and image
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImageAsset.flowerhome,
                        width: 100.w,
                        height: 100.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Logo',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          fontSize: 60.sp,
                          color: AppColors.purple,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 240.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.h),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          suffixIcon: Icon(
                            Icons.search,
                            color: AppColors.purple,
                            size: 32.sp,
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors.darkgray,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImageAsset.logo2,
                        height: 30.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10.h),
              Text(
                'Hello User',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: AppColors.purple,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 80.h,
                width: 280.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.w),
                    border: Border.all(
                      color: AppColors.whitepin, // Border color
                      width: 3,
                    )),
                child: Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                    child: Text(
                      'Explore our stunning collection of flowers and vibrant plants to brighten every occasion.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: AppColors.darkgray,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 240.h,
                width: 320.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28.w),
                      bottomRight: Radius.circular(6.w),
                      topLeft: Radius.circular(6.w),
                      topRight: Radius.circular(6.w),
                    ),
                    border: Border.all(
                      color: AppColors.pink, // Border color
                      width: 3.w,
                    )),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -30,
                      left: 20,
                      right: 20,
                      child: Image.asset(
                        'assets/images/home.png',
                        width: 200.w,
                        height: 200.h,
                      ),
                    ),
                    Positioned(
                      left: 20.h,
                      right: 20.h,
                      top: 130.h,
                      child: SizedBox(
                        height: 200,
                        width: 250.w,
                        child: Column(
                          children: [
                            Text(
                              'Happy Mothers Day',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                fontSize: 22.sp,
                                color: AppColors.darkgray,
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              'On this special Occasion get 50% discount on the Artificial Silk Roses',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: AppColors.darkgray,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

//   Widget _buildBestSellers() {
//     return Column(
//       children: [
//         // Image.asset(
//         //   'assets/rectangle-81.svg',
//         //   width: 400.w,
//         //   height: 342.h,
//         // ),
//         Positioned(
//           left: 18.58.w,
//           top: 16.05.h,
//           child: Text(
//             'Best Sellers',
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//               fontWeight: FontWeight.w700,
//               fontSize: 20.sp,
//               color: const Color(0xFF3C2367),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 18.58.w,
//           top: 63.h,
//           child: Column(
//             children: [
//               // _buildBestSellerItem(
//               //   image: 'assets/416-w-0-pi-ok-dl-ac-2.svg',
//               //   title: 'Faux Eyebrow leaf',
//               //   price: 'Price:25\$',
//               // ),
//               // _buildBestSellerItem(
//               //   image: 'assets/71-r-rpz-yacs-s-ac-sx-569-1.svg',
//               //   title: 'Dendrobium Lasting Orchids',
//               //   price: 'Price:38\$',
//               // ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCustomizeGifts() {
//     return Column(
//       children: [
//         // Image.asset(
//         //   'assets/rectangle-81-2.svg',
//         //   width: 400.w,
//         //   height: 342.h,
//         // ),
//         Positioned(
//           left: 24.w,
//           child: Text(
//             'Customize Special Gifts',
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//               fontWeight: FontWeight.w700,
//               fontSize: 20.sp,
//               color: const Color(0xFF3C2367),
//             ),
//           ),
//         ),
//         // Positioned(
//         //   left: 24.w,
//         //   top: 21.h,
//         //   child: Image.asset(
//         //     'assets/gifts-photo-1.svg',
//         //     width: 226.87.w,
//         //     height: 193.99.h,
//         //   ),
//         // ),
//         Positioned(
//           left: 24.w,
//           top: 21.h,
//           child: Image.asset(
//             'assets/rectangle-82-2.svg',
//             width: 190.w,
//             height: 193.h,
//           ),
//         ),
//         Positioned(
//           left: 24.w,
//           top: 30.h,
//           child: Text(
//             'Love Box',
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//               fontWeight: FontWeight.w900,
//               fontSize: 20.sp,
//               color: const Color(0xFFF6E1D8),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 24.w,
//           top: 60.h,
//           child: Text(
//             'Check Out The Special flower arrangement with a luxurious chocolate box',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//               fontWeight: FontWeight.w500,
//               fontSize: 14.sp,
//               color: const Color(0xFF707070),
//               fontStyle: FontStyle.italic,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildBestSellerItem({required String image, required String title, required String price}) {
//     return Column(
//       children: [
//         Image.asset(
//           image,
//           width: 90.95.w,
//           height: 132.96.h,
//         ),
//         Text(
//           title,
//           style: TextStyle(
//             fontFamily: 'Montserrat',
//             fontWeight: FontWeight.w700,
//             fontSize: 12.sp,
//             color: const Color(0xFF3C2367),
//           ),
//         ),
//         Text(
//           price,
//           style: TextStyle(
//             fontFamily: 'Roboto',
//             fontWeight: FontWeight.w500,
//             fontSize: 10.sp,
//             color: const Color(0xFF3C2367),
//           ),
//         ),
//         SizedBox(height: 10.h),
//         // Image.asset(
//         //   'assets/rectangle-145.svg',
//         //   width: 84.11.w,
//         //   height: 25.07.h,
//         // ),
//
//       ],
//     );
//   }
}
