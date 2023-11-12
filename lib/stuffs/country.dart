import 'package:explore_app/stuffs/lists.dart';
import 'package:explore_app/screens/country_page.dart';
import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  const Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: ListView.separated(
          physics: const ClampingScrollPhysics(),
          itemCount: countryInformation.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container();
            }
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CountryPage()));
              },
              child: ListTile(
                  // minLeadingWidth: 5,
                  // leading: ImageIcon(
                  //     AssetImage(countryInformation[index].countryFlag!), size: 25,),
                  leading: Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                countryInformation[index - 1].countryFlag!)),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  title: Text(countryInformation[index - 1].countryName!),
                  subtitle:
                      Text(countryInformation[index - 1].countryCapital!)),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const Text(
                'A',
                style: TextStyle(
                  color: Color.fromRGBO(102, 112, 133, 1),
                ),
              );
            } else if (countryInformation[index - 1]
                    .countryName
                    .toString()[0] !=
                countryInformation[index].countryName.toString()[0]) {
              return Text(
                countryInformation[index].countryName.toString()[0],
                style: const TextStyle(
                  color: Color.fromRGBO(102, 112, 133, 1),
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
