import 'package:cpb/utils/constants.dart';
import 'package:cpb/widgets/custom_async_btn.dart';
import 'package:cpb/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationScreen extends StatelessWidget {
  static const String routeName = '/donation';

  const DonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/get_started_bg.jpg'),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 50.0, left: 14.0, right: 14.0),
          children: [
            _buildAppBarView(),
            const SizedBox(height: 24.0),
            _buildDonateCounterView(),
            const SizedBox(height: 24.0),
            _buildPayPalBtn(),
            const SizedBox(height: 24.0),
            _buildCardDetailsView(context),
            const SizedBox(height: 24.0),
            CustomAsyncBtn(
              btntxt: 'DONATE',
              btnColor: kSecondaryColor,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarView() {
    return Row(
      children: [
        InkWell(
          onTap: () => Get.back(),
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        const SizedBox(width: 12.0),
        Text('Made a Donation', style: kTitleStyle),
      ],
    );
  }

  Widget _buildDonateCounterView() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Donate', style: kTitleStyle),
              const Text(
                'A minimum donation of \$5 is required',
                style: TextStyle(fontSize: 10.0),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 110.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: "10   ",
                      style: kTitleStyle.copyWith(fontFamily: 'Poppins', fontSize: 24.0),
                      children: [
                        TextSpan(text: '\$', style: kBodyStyle),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 90.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Icon(
                  Icons.arrow_drop_up,
                  size: 36.0,
                ),
              ),
              Container(
                width: 90.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Icon(
                  Icons.arrow_drop_down,
                  size: 36.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPayPalBtn() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.blue.shade700),
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'DONATE VIA PAYPAL',
            style: kBodyStyle.copyWith(color: Colors.blue.shade700),
          ),
          Image.asset('assets/icons/paypal.png', width: 80.0),
        ],
      ),
    );
  }

  Widget _buildCardDetailsView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Card Holder', style: kBodyStyle),
        const SizedBox(height: 10.0),
        const CustomTextFieldWithOutIcon(
          hintText: 'Name on card',
          borderRadius: 8.0,
        ),
        const SizedBox(height: 10.0),
        Text('Card Number', style: kBodyStyle),
        const SizedBox(height: 10.0),
        const CustomTextFieldWithOutIcon(
          hintText: '**** **** **** ****',
          borderRadius: 8.0,
          suffixIconUrl: 'assets/icons/mastercard.png',
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                children: [
                  Text('Valid Until', style: kBodyStyle),
                  const SizedBox(height: 10.0),
                  const CustomTextFieldWithOutIcon(
                    borderRadius: 8.0,
                    hintText: 'Month/Year',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                children: [
                  Text('CVC', style: kBodyStyle),
                  const SizedBox(height: 10.0),
                  const CustomTextFieldWithOutIcon(
                    borderRadius: 8.0,
                    hintText: '***',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
