import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';
import 'package:cruftybuy/presentation/ui/widget/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widget/custom_stepper.dart';

class ProductDetasilScreen extends StatefulWidget {
  const ProductDetasilScreen({super.key});

  @override
  State<ProductDetasilScreen> createState() => _ProductDetasilScreenState();
}

class _ProductDetasilScreenState extends State<ProductDetasilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              const ProductImageSlider(),
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: const Text(
                  "Product Details",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Happy New Year Special Deal Save 50% ',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                CustomStepper(
                  lowerLimit: 1,
                  upperLimit: 10,
                  stepValue: 1,
                  value: 1,
                  onChange: (value) {},
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
