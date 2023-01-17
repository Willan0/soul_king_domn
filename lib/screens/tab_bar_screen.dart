import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';

import '../constant/dimens.dart';
import '../datas/datas.dart';
import '../widgets/scroll_widget.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  var item = tabViewItems.first;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dWh350x,
      child: Column(
        children: [
          TabBarTitleItems(
            tabs: tabTitles,
            onTap: (index){
              setState(() {
                item = tabViewItems.elementAt(index);
              });
            },
          ),
          Expanded(
              child: Container(
              padding: const EdgeInsets.only(top: dMp10x),
              color: cSecondaryColor,
              child: TabBarScreenView(items: item,)))
        ],
      ),
    );
  }
}

class TabBarScreenView extends StatelessWidget{
  const TabBarScreenView({super.key,required this.items});
  final List<Data> items;
  @override
  Widget build(BuildContext context) {
    return ScrollViewWidget(list: items,);
  }
}
class TabBarTitleItems extends StatelessWidget {
  const TabBarTitleItems({Key? key,required this.tabs,required this.onTap}) : super(key: key);
  final List<String> tabs;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: TabBar(tabs: tabs.map((e) =>  Text(e)).toList(),
        isScrollable: true,
        labelColor: cW,
        labelPadding: const EdgeInsets.all(dMp20x),
        unselectedLabelColor: cShadow,
        indicatorColor: cAmber,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: dMp10x),
        onTap: (index) =>onTap(index),
      ),
    );
  }
}

