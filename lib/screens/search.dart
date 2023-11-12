import 'package:explore_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stuffs/country.dart';
import '../stuffs/filter.dart';
import '../stuffs/languages.dart';
import '../stuffs/bottomsheet-builder.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _iconBool = true;

  final IconData _iconLight = Icons.wb_sunny_outlined;
  final IconData _iconDark = Icons.dark_mode_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<ThemeProvider>().toggleTheme();
                _iconBool = !_iconBool;
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight)),
        ],
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Text(
              "Explore",
              style: TextStyle(
                  fontFamily: "Lobster Two",
                  fontWeight: FontWeight.w700,
                  fontSize: 45),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 108, 0, 1),
                  shape: BoxShape.circle),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            const SizedBox(height: 15.0),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none),
                hintText: 'Search Country',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey[500],
                  size: 20.0,
                ),
                fillColor: Theme.of(context).colorScheme.primary,
                filled: true,
              ),
            ),
            const SizedBox(height: 7.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomSheetBuilder(
                    title: 'EN',
                    icon: Icons.language_outlined,
                    onPressed: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0))),
                          context: context,
                          builder: (context) => const Languages());
                    }),
                BottomSheetBuilder(
                  title: 'Filter',
                  icon: Icons.filter_alt_outlined,
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0))),
                        context: context,
                        builder: (context) => DraggableScrollableSheet(
                            expand: false,
                            initialChildSize: 0.4,
                            maxChildSize: 0.9,
                            minChildSize: 0.32,
                            builder: (context, scrollController) =>
                                const Filter()));
                  },
                ),
              ],
            ),
            const Country(),
          ],
        ),
      ),
    );
  }
}
