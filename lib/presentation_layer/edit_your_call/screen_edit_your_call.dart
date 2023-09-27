import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/buttons/buttons.dart';
import 'package:service_pro/presentation_layer/widgets/text_form_fields/text_form_field.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:sizer/sizer.dart';
import '../../res/fonts/fonts.dart';
import '../widgets/buttons/text/text_style.dart';
import '../widgets/status_widget/status_widget.dart';

class ScreenEditYourCall extends StatelessWidget {
  const ScreenEditYourCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40), child: AppBar()),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        children: [
          Center(
            child: Text(
              'Edit your call',
              style: KFonts.poppins(fontSize: 5.w, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'status: ',
                style:
                    KFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              const StatusWidget(),
            ],
          ),
          Row(
            children: [
              Text('Job no: ',
                  style: KFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600)),
              Text('C22/27',
                  style: KFonts.poppins(
                      fontSize: 15,
                      color: KColors.darkBlue,
                      fontWeight: FontWeight.w600))
            ],
          ),
          Text('Customer detail',
              style:
                  KFonts.poppins(fontSize: 4.w, fontWeight: FontWeight.w700)),
          Container(
            width: double.infinity,
            height: 24.h,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: KColors.darkBlue,
                        ))),
                KTextStyle.textStyle3(
                    'Product Name', 'Dell latitude 7390', 3.5.w),
                KTextStyle.textStyle3('Complaint', 'Not working', 3.5.w),
                KTextStyle.textStyle3(
                    'Product Name ', 'Dell latitude 7390', 3.5.w),
                KTextStyle.textStyle3('Serial no', 'CSN57578M', 3.5.w),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Product Details',
                  style: KFonts.poppins(
                      fontSize: 4.w, fontWeight: FontWeight.w700)),
              SizedBox(
                width: 20.w,
                height: 8.w,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(KColors.darkBlue),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // Set the border radius to zero
                      ),
                    ),
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.white, fontSize: 3.w),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              KTextStyle.textStyle3('Product Name', 'Dell latitude 7390', 4.w),
              KTextStyle.textStyle3('Complaint', 'Not working', 4.w),
              KTextStyle.textStyle3('Product Name ', 'Dell latitude 7390', 4.w),
              KTextStyle.textStyle3('Serial no', 'CSN57578M', 4.w),
            ],
          ),
          const TextFormFiledWidget(
              title: 'Service', hintText: 'Enter you service details'),
          const TextFormFiledWidget(
              title: 'Service', hintText: 'Enter you service details'),
          Buttons.outlinedButton(() {}, 'Update status'),
          SizedBox(
            height: 3.h,
          )
        ],
      ),
    );
  }
}
