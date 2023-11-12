import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore_app/stuffs/lists.dart';
import 'package:flutter/material.dart';
import '../stuffs/build-row.dart';
import '../stuffs/navigate.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  var activePage = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Afghanistan",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CarouselSlider.builder(
                  carouselController: _controller,
                  options: CarouselOptions(
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (page, reason) {
                        setState(() {
                          activePage = page;
                        });
                      }),
                  itemCount: carousel.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7.0)),
                        image: DecorationImage(
                            image: AssetImage(carousel[index]),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
                Positioned(
                  right: 0,
                  top: 65,
                  child: NavigateIcon(
                      icon: Icons.navigate_next_outlined,
                      onPress: () {
                        _controller.nextPage();
                      }),
                ),
                Positioned(
                  left: 0,
                  top: 65,
                  child: NavigateIcon(
                      icon: Icons.navigate_before_outlined,
                      onPress: () {
                        _controller.previousPage();
                      }),
                ),
                /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavigateIcon(
                        icon: Icons.navigate_before_outlined,
                        onPress: () {
                          _controller.previousPage();
                        }),
                    NavigateIcon(
                        icon: Icons.navigate_next_outlined,
                        onPress: () {
                          _controller.nextPage();
                        }),
                  ],
                ),
                 */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators(carousel.length, activePage),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            buildRow(title: "Population", value: "77,354"),
            buildRow(title: "Region", value: "Europe"),
            buildRow(title: "Capital", value: "Kabul"),
            buildRow(title: "Motto", value: "There is no deity but God"),
            const SizedBox(height: 20.0),
            buildRow(title: "Official language", value: "Catalan"),
            buildRow(
                title: "Ethnic group", value: "Andorran, Spanish, Portuguese"),
            buildRow(title: "Religion", value: "Christianity"),
            buildRow(title: "Government", value: "Parliamentary democracy"),
            const SizedBox(height: 20.0),
            buildRow(title: "Independence", value: "8th September, 1278"),
            buildRow(title: "Area", value: "467,63km2"),
            buildRow(title: "Currency", value: "Euro"),
            buildRow(title: "GDP", value: "US\$3.400 billion"),
            const SizedBox(height: 20.0),
            buildRow(title: "Time zone", value: "UTC+01"),
            buildRow(title: "Date format", value: "dd/mm/yy"),
            buildRow(title: "Dialing code", value: "+376"),
            buildRow(title: "Driving side", value: "Right"),
          ],
        ),
      ),
    );
  }
}
