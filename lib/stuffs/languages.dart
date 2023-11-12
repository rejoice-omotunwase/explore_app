import 'package:explore_app/stuffs/lists.dart';
import 'package:flutter/material.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  var groupValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 15.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Languages",
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
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return RadioListTile(
                  visualDensity: const VisualDensity(vertical: -3),
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: Theme.of(context).colorScheme.onPrimary,
                  toggleable: true,
                  title: Text(languagesList[index]),
                  value: languagesList[index],
                  groupValue: groupValue,
                  onChanged: (newValue) {
                    setState(() {
                      groupValue = newValue;
                    });
                  });
            },
            itemCount: languagesList.length,
          ),
        ),
      ],
    );
  }
}
