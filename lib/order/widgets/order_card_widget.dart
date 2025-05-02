import 'package:flutter/material.dart';
import 'package:selorgweb/order_details/screens/order_delivered_details.dart';
import '../constants/colors.dart';
import '../constants/styles.dart';

class OrderCardWidget extends StatelessWidget {
  final List<String> productImages;
  final String date;
  final double amount;

  const OrderCardWidget({
    Key? key,
    required this.productImages,
    required this.date,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.cardDecoration,
      padding: const EdgeInsets.all(23),
      margin: const EdgeInsets.only(bottom: 11),
      child: Column(
        children: [
          Row(
            children:
                productImages.map((url) => _buildProductImage(url)).toList(),
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Order Delivered',
                        style: TextStyle(
                          color: Color(0xFF444444),
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 14),
                      //Image.network('https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/080c4ac15c2e085323af52959e560eb759d2fe5b?placeholderIfAbsent=true', width: 28, height: 28),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Text(
                    date,
                    style: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Image.network(
                  //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/243adecf69d79ddad851dce8cfee5bb65fcb6908?placeholderIfAbsent=true',
                  //   width: 28,
                  //   height: 28,
                  // ),
                  Text(
                    amount.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Image.network(
                  //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/16ccaddff3253b0cbb5e22f209a01d3346840248?placeholderIfAbsent=true',
                  //   width: 26,
                  //   height: 26,
                  // ),
                ],
              ),
            ],
          ),
          const Divider(color: Color(0xFFBDBDBD)),
          const SizedBox(height: 11),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OrderDeliveredDetails();
                  },
                ),
              );
            },
            child: const Text(
              'Order Again',
              style: TextStyle(
                color: Color(0xFFE54444),
                fontSize: 23,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductImage(String url) {
    return Container(
      width: 91,
      height: 96,
      margin: const EdgeInsets.only(right: 21),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGrey),
        borderRadius: BorderRadius.circular(13),
      ),
      padding: const EdgeInsets.all(10),
      child: Image.network(url, fit: BoxFit.contain),
    );
  }
}
