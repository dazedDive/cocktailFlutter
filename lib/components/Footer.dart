import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      color: Colors.black,
      child:Row(
        children:[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: RichText(
              text: const TextSpan(
                onEnter: null,
                text: 'mentions légales',
                style: TextStyle(
                  color:Colors.lime,
                )
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: RichText(
              text: const TextSpan(
                onEnter: null,
                text: 'contactez nous',
                style: TextStyle(
                  color:Colors.lime,
                )
            )),
          )
        ],
      ),
    );
  }
}