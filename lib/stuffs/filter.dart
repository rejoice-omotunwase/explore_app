import 'package:explore_app/screens/search.dart';
import 'package:explore_app/stuffs/lists.dart';
import 'package:flutter/material.dart';
import 'filter_bottom.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isExpanded = false;

  Widget bottomButtons() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilterBottomButton(
          onPressed: () {},
          title: 'Reset',
          color: Theme.of(context).colorScheme.background,
          borderSide: Theme.of(context).toggleableActiveColor,
          textColor: Theme.of(context).toggleableActiveColor,
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: FilterBottomButton(
            title: 'Show results',
            color: const Color.fromRGBO(255, 108, 0, 1),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            borderSide: const Color.fromRGBO(28, 25, 23, 1),
            textColor: Colors.grey[100]!,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
            top: -15,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
              ),
              width: 60,
              height: 7,
            )),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Filter",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.cancel_rounded,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overflow) {
                  overflow.disallowIndicator();
                  return true;
                },
                child: ListView(
                  children: [
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            if (expanded == true) {
                              bottomButtons();
                            } else {
                              return;
                            }
                          });
                        },
                        title: const Text(
                          "Continent",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Column(
                            children: [
                              ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: continentsList.length,
                                itemBuilder: (context, index) {
                                  return CheckboxListTile(
                                    title: Text(continentsList[index],
                                        style: TextStyle(
                                            color: Colors.grey.shade600)),
                                    checkboxShape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0)),
                                    value: checkBox1.contains(index),
                                    onChanged: (newValue) {
                                      setState(() {
                                        checkBox1.contains(index)
                                            ? checkBox1.remove(index)
                                            : checkBox1.add(index);
                                      });
                                    },
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: const Text(
                          "Time zone",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        children: [
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: continentsList.length,
                            itemBuilder: (context, index) {
                              return CheckboxListTile(
                                  title: Text(timeList[index],
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
                                  checkboxShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  value: checkBox2.contains(index),
                                  onChanged: (newValue) {
                                    setState(() {
                                      checkBox2.contains(index)
                                          ? checkBox2.remove(index)
                                          : checkBox2.add(index);
                                    });
                                  });
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        margin: const EdgeInsets.only(
                            top: 20.0, left: 15.0, right: 20.0, bottom: 20),
                        child: bottomButtons()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
