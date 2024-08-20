import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
              children: [
                // Top icon row
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      './assets/categories-1.svg',
                      width: 32.w,
                      height: 32.h,
                    ),
                  ],
                ),
                Spacer(),
                // Logo and image
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      './assets/classic-white-peony-cream-beige-rose-and-ranunculus-flowers-eucalyptus-greenery-big-vector-design-wedding-spring-bouquet-floral-summer-1.svg',
                      width: 123.64.w,
                      height: 123.64.h,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Logo',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w800,
                        fontSize: 64.sp,
                        color: Color(0xff3c2367),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // Search bar
                Container(
                  width: 266.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.h),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp,
                                color: Color(0xff8c8a8c),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Image.asset(
                          './assets/search-1.svg',
                          width: 22.w,
                          height: 22.h,
                        ),
                      ],
                    ),),),],)
  //             SizedBox(height: 50.h),
  //             _buildHeader(),
  //             SizedBox(height: 20.h),
  //             _buildWelcomeCard(),
  //             SizedBox(height: 20.h),
  //             _buildOfferCard(),
  //             SizedBox(height: 20.h),
  //             _buildBestSellers(),
  //             SizedBox(height: 20.h),
  //             _buildCustomizeGifts(),
  //             SizedBox(height: 20.h),
  //             SizedBox(height: 55.h),
  //            // Image.asset('assets/icons-nav-bar.svg', width: 430.w),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildHeader() {
  //   return Column(
  //     children: [
  //       // Image.asset(
  //       //   'assets/rectangle-42.svg',
  //       //   width: 430.w,
  //       //   height: 297.h,
  //       // ),
  //       // Positioned(
  //       //   left: 16.w,
  //       //   top: 118.h,
  //       //   child: Image.asset(
  //       //     'assets/classic-white-peony-cream-beige-rose-and-ranunculus-flowers-eucalyptus-greenery-big-vector-design-wedding-spring-bouquet-floral-summer-1.svg',
  //       //     width: 123.64.w,
  //       //     height: 123.64.h,
  //       //   ),
  //       // ),
  //       Text(
  //         'Logo',
  //         style: TextStyle(
  //           fontFamily: 'Montserrat',
  //           fontWeight: FontWeight.w800,
  //           fontSize: 64.sp,
  //           color: const Color(0xFF3C2367),
  //         ),
  //       ),
  //       // Image.asset(
  //       //   'assets/rectangle-32.svg',
  //       //   width: 266.w,
  //       //   height: 44.h,
  //       // ),
  //       SizedBox(height: 20.h),
  //       Text(
  //         'Search',
  //         style: TextStyle(
  //           fontFamily: 'Roboto',
  //           fontWeight: FontWeight.w400,
  //           fontSize: 20.sp,
  //           color: const Color(0xFF8C8A8C),
  //         ),
  //       ),
  //       // Image.asset(
  //       //   'assets/search-1.svg',
  //       //   width: 22.w,
  //       //   height: 22.h,
        // ),
  //     ],
  //   );
  // }}

  // Widget _buildWelcomeCard() {
  //   return Column(
  //     children: [
  //       // Image.asset(
  //       //   'assets/rectangle-83.svg',
  //       //   width: 323.w,
  //       //   height: 96.h,
  //       // ),
  //       SizedBox(height: 10.h),
  //       Text(
  //         'Hello User',
  //         textAlign: TextAlign.center,
  //         style: TextStyle(
  //           fontFamily: 'Montserrat',
  //           fontWeight: FontWeight.w700,
  //           fontSize: 20.sp,
  //           color: const Color(0xFF3C2367),
  //         ),
  //       ),
  //       SizedBox(height: 10.h),
  //       Text(
  //         'Explore our stunning collection of flowers and vibrant plants to brighten every occasion.',
  //         textAlign: TextAlign.center,
  //         style: TextStyle(
  //           fontFamily: 'Montserrat',
  //           fontWeight: FontWeight.w500,
  //           fontSize: 17.sp,
  //           color: const Color(0xFF8C8A8C),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildOfferCard() {
  //   return Stack(
  //     children: [
  //       // Image.asset(
  //       //   'assets/rectangle-76.svg',
  //       //   width: 400.w,
  //       //   height: 342.h,
  //       // ),
  //       Positioned(
  //         left: 20.w,
  //         top: 20.h,
  //         child: Text(
  //           'Happy Mothers Day',
  //           style: TextStyle(
  //             fontFamily: 'Montserrat',
  //             fontWeight: FontWeight.w800,
  //             fontSize: 24.sp,
  //             color: const Color(0xFF707070),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         left: 20.w,
  //         top: 50.h,
  //         child: Text(
  //           'On this special Occasion get 50% discount on the Artificial Silk Roses',
  //           style: TextStyle(
  //             fontFamily: 'Montserrat',
  //             fontWeight: FontWeight.w500,
  //             fontSize: 16.sp,
  //             color: const Color(0xFF8C8A8C),
  //           ),
  //         ),
  //       ),
  //       // Positioned(
  //       //   left: 20.w,
  //       //   top: 100.h,
  //       //   child: Image.asset(
  //       //     'assets/mixed-artificial-silk-rose-flower-arrangement-in-ceramic-pot-and-acrylic-water-artificial-faux-flower-in-vase-fake-floral-centerpiece-1.svg',
  //       //     width: 223.w,
  //       //     height: 223.h,
  //       //   ),
  //       // ),
    //   ],
    // );
  // }

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
//         Text(
//           'Add To Cart',
//           style: TextStyle(
//             fontFamily: 'Montserrat',
//             fontWeight: FontWeight.w500,
//             fontSize: 10.sp,
//             color: const Color(0xFF3C2367),
//           ),
//         ),
//       ],
//     );
//   }
}

