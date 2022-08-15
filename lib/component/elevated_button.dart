import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final String buttonText;
  final Icon customIcon;
  final Color backgroundButtonColor;
  final Color buttonTextColor;

  const CustomElevatedButton({Key? key,
    required this.buttonText,
    required this.customIcon,
    required this.backgroundButtonColor,
    required this.buttonTextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 7,
        right: MediaQuery.of(context).size.width / 7,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundButtonColor),
        ),
        onPressed: (){
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customIcon,
            SizedBox(width: 5,),
            Text(buttonText, style: TextStyle(color: buttonTextColor),),
          ],
        ),),
    );
  }
}
