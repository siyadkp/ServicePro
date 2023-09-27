import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/add_and_edit_customer/add_and_edit_customer.dart';
import 'package:service_pro/res/fonts/fonts.dart';
import 'package:service_pro/res/icons/icons.dart';
import 'package:service_pro/route/route_genarator.dart';
import 'package:sizer/sizer.dart';
import '../widgets/service_card_widget.dart/service_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(3.h),
          child: AppBar(
            backgroundColor: Colors.grey[200],automaticallyImplyLeading: false,
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 1.h,
          ),
          Center(
         child: Container(
    width: 90.w,
    height: 50.w,
 padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 74, 146, 255),
          Color.fromARGB(255, 41, 91, 165),
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Shadow color
          spreadRadius: 2, // Spread of the shadow
          blurRadius: 5, // Blur radius of the shadow
          offset: const Offset(0, 3), // Offset of the shadow (adjust for your needs)
        ),
      ],
    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(radius: 30),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Siyad',
                            style: KFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Kottakkal',
                            style: KFonts.poppins(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 224, 224, 224),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( right: 5),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7568',
                                style: KFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Pending',
                                style: KFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '7568',
                              style: KFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Complete',
                              style: KFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 5),
            child: Text(
              'Services',
              style: KFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Center(
            child: SizedBox(
                height: 71.h,
                width: 91.w,
                child: GridView.builder(
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                     ),
                  itemBuilder: (BuildContext context, int index) {
                    return ServicesCard(
                        data:
                            IconsAndNaming.homeCardsIconsAndNaming[index],routeName: RouteGenarator.route[index],);
                  },
                )),
          ),
        ],
      ),
    );
  }
}
