import 'package:flutter/material.dart';

class NavigationHeader extends StatefulWidget{
  NavigationHeader({super.key});

  @override
  State<NavigationHeader> createState() => NavigationHeaderState();
}

class NavigationHeaderState extends State<NavigationHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 500,
        maxWidth: double.infinity
      ),
      height: 1000,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text('App Logo'),
          Spacer(),
          MenuButton(navLocationText: 'Home'),
          MenuButton(navLocationText: 'About'),
          MenuButton(navLocationText: 'Exhibition'),
          MenuButton(navLocationText: 'Events'),
          MenuButton(navLocationText: 'Gallery'),
          Spacer(),
          Flexible(
            flex: 2,
            child: Container(),
          )
        ],
      )
    );
  }
}

class MenuButton extends StatelessWidget {
  final String navLocationText;

  MenuButton({
    super.key,
    required this.navLocationText
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      },
      child: Text(navLocationText)
    );
  }
}

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationHeader();
  }

  @override
  Size get PreferredSize => Size.fromHeight(height)
}