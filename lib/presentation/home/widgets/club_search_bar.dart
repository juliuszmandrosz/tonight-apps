import 'package:flutter/material.dart';
import 'package:raver/presentation/home/widgets/search_input.dart';

class ClubSearchBar extends StatelessWidget {
  final Function _onSearch;

  const ClubSearchBar({Key? key, required Function onSearch})
      : this._onSearch = onSearch,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: SearchField(
            onSearch: _onSearch,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    );  }
}
