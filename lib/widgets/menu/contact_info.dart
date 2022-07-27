import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo('Address', 'Street 5 behind station'),
        buildContactInfo('City', 'Zagazig'),
        buildContactInfo('Country', 'Alsharqia'),
        buildContactInfo('Email', 'mohamed.gamalfayed@gmail.com'),
        buildContactInfo('Mobile', '(+20)1009973789'),
        buildContactInfo('Website', 'myWebsite@web.com'),
      ],
    );
  }

  Widget buildContactInfo(String title, String? text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text ?? '-',
          ),
        ],
      ),
    );
  }
}
