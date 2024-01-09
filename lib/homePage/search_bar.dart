
import 'package:flutter/material.dart';

import '../variables.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)),
            prefixIcon: const Icon(Icons.search),
            suffixIcon: GestureDetector(
                onTap: () {
                },
                child: const Icon(Icons.arrow_forward))),
        controller: searchField,
      ),
    );
  }
}



