import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cart_item_widget.dart';
import 'delivery_instruction_widget.dart';
import 'bill_summary_widget.dart';

class CartWithNoAddress extends StatelessWidget {
  const CartWithNoAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 59,
            child: Column(
              children: [
                const CartItemWidget(),
                const SizedBox(height: 8),
                const DeliveryInstructionWidget(),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 6,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Additional Note',
                        style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.all(23),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFAAAAAA)),
                        ),
                        child: Text(
                          'Add your special notes on your order',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF666666),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 41,
            child: Column(
              children: [
                _buildCouponsSection(),
                const SizedBox(height: 7),
                // _buildDeliveryTipSection(),
                const SizedBox(height: 7),
                const BillSummaryWidget(),
                const SizedBox(height: 7),
                // _buildAddressSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFF034703),
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 185,
                child: Row(
                  children: [
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/31d4d778479f952ae221f593c1d7e3928c27fd63?placeholderIfAbsent=true',
                      width: 69,
                    ),
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/a98c1b6843a1698817b4c568832647026eb3943d?placeholderIfAbsent=true',
                      width: 27,
                    ),
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/b22d0ed08c69bcdabcd8e1453ead8cac4dfa60eb?placeholderIfAbsent=true',
                      width: 23,
                    ),
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/1a94e5694a04b931f73c0b539960528b9722ebf7?placeholderIfAbsent=true',
                      width: 24,
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 2,
                margin: const EdgeInsets.symmetric(horizontal: 19),
                color: const Color(0x80DEE3CF),
              ),
              Text(
                'Lattice Bridge',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            width: 524,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              children: [
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/5f7c7f866dbfb3ee292dbd5cbbfb31ff1026a32c?placeholderIfAbsent=true',
                  width: 17,
                ),
                const SizedBox(width: 13),
                Text(
                  'Search For Products...',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF666666),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'My Account',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 29),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                    ),
                  ],
                  border: Border.all(color: const Color(0x40666666)),
                ),
                child: Text(
                  'My Cart',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF034703),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMainContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 59,
            child: Column(
              children: [
                const CartItemWidget(),
                const SizedBox(height: 8),
                const DeliveryInstructionWidget(),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 6,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Additional Note',
                        style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.all(23),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFAAAAAA)),
                        ),
                        child: Text(
                          'Add your special notes on your order',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF666666),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 41,
            child: Column(
              children: [
                _buildCouponsSection(),
                const SizedBox(height: 7),
                // _buildDeliveryTipSection(),
                const SizedBox(height: 7),
                const BillSummaryWidget(),
                const SizedBox(height: 7),
                // _buildAddressSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCouponsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 19),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Image.network(
              //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/3191f52ec8eb59a773a1e78d306f5994eb15e2dd?placeholderIfAbsent=true',
              //   width: 39,
              // ),
              const SizedBox(width: 20),
              Text(
                'View Coupons & Offers',
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF444444),
                ),
              ),
              
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded, color: const Color(0xFF666666)),
          // Image.network(
          //   'https://cdn.builder.io/api/v1/image/assets/06096b941d4746ae854b71463e363371/fd21dedf63ca3d820a922f365814eef0f412a62e?placeholderIfAbsent=true',
          //   width: 30,
          // ),
        ],
      ),
    );
  }

  // Continue with other sections...
  // Implementation of _buildDownloadSection(), _buildCategories(), _buildFooter()
  // would follow similar patterns with proper styling and layout
}
