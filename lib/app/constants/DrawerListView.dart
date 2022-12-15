import 'package:flutter/material.dart';
import 'package:mobilnex_demo3/app/constants/constants.dart';


class DrawerListView extends StatelessWidget {
  final children;

  const DrawerListView({Key? key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: children,
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final iconName;
  final text;
  final navigate;

  const DrawerListTile({Key? key, this.iconName, this.text, this.navigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: greyBackgroundColor,
      textColor: whiteBackgroundColor,
      iconColor: whiteBackgroundColor,
      onTap: navigate,
      leading: Icon(
        iconName,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(width: 0, color: Colors.transparent),
      ),
    );
  }
}

class DrawerExpansionTile extends StatelessWidget {
  final iconName;
  final text;
  final children;

  const DrawerExpansionTile({Key? key, this.iconName, this.text, this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ExpansionTile(
        backgroundColor: greyBackgroundColor,
        collapsedBackgroundColor: greyBackgroundColor,
        collapsedIconColor: whiteBackgroundColor,
        collapsedTextColor: whiteBackgroundColor,
        textColor: whiteBackgroundColor,
        iconColor: whiteBackgroundColor,
        title: Text(
          text,
          style: TextStyle(color: whiteBackgroundColor),
        ),
        leading: Icon(
          iconName,
          color: whiteBackgroundColor,
        ),
        children: children,
      ),
    );
  }
}
