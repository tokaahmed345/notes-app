import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.isactive,required this.color});

  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ListViewColor extends StatefulWidget {
  const ListViewColor({super.key});

  @override
  State<ListViewColor> createState() => _ListViewColorState();
}

class _ListViewColorState extends State<ListViewColor> {
  int curentindex = 0;
  List<Color> pallet = const[
    Color(0xffFE5F55),
    Color(0xffF0B67F),
    Color(0xffD6D1B1),
    Color(0xffC7EFCF),
    Color(0xffEEF5DB),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pallet.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                  onTap: () {
                    curentindex = index;
                    setState(() {});
                  },
                  child: ItemColor(
                    color: pallet[index],
                    isactive: curentindex == index,
                  )),
            );
          }),
    );
  }
}
