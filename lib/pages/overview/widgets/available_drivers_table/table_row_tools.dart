import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class DisplayRatingWidget extends StatelessWidget {
  final double rating;
  const DisplayRatingWidget({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.deepOrange, size: 18,),
        const SizedBox(width: 5,),
        CustomTextWidget(text: rating.toString())
      ],
    );
  }
}

class AvailableDeliveryButtonWidget extends StatelessWidget {
  const AvailableDeliveryButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: active, width: 0.5),
        color: light,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: CustomTextWidget(
        text: "Available Delivery",
        color: active.withOpacity(0.7),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
