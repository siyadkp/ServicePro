import 'package:flutter/material.dart';
import 'package:service_pro/presentation_layer/widgets/app_bar/app_bar.dart';
import 'package:service_pro/presentation_layer/widgets/single_customer_widget/single_customer_widget.dart';
import 'package:service_pro/route/route_genarator.dart';
import 'package:sizer/sizer.dart';

class ScreenCustomerView extends StatelessWidget {
  const ScreenCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBarWidget(title: 'Customers', titleHiding: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => const SingleCustomerWidget(),
            ),
            SizedBox(
              height: 3.h,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteGenarator.addandeditcustomer);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
