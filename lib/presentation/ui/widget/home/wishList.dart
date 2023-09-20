import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';
import 'package:cruftybuy/presentation/ui/utlity/imageAssets.dart';
import 'package:flutter/material.dart';

class WishListProductCard extends StatefulWidget {
  const WishListProductCard({super.key});

  @override
  State<WishListProductCard> createState() => _WishListProductCardState();
}

class _WishListProductCardState extends State<WishListProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Card(
        child: SizedBox(
          width: 120,
          child: Column(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(.1),
                  image: const DecorationImage(
                    image: AssetImage(
                      ImagesAssets.shoes,
                    ),
                  ),
                ),
              ),
              const Text(
                "Nike Shoes A",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' \$90',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  Card(
                    color: AppColors.primaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
