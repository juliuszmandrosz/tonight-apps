import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final Function _onSearch;

  const SearchField({Key? key, required Function onSearch})
      : _onSearch = onSearch,
        super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) => widget._onSearch(value),
      decoration: InputDecoration(
        hintText: "Search",
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(25),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
          size: 18,
        ),
        suffixIcon: textController.text.isNotEmpty
            ? InkWell(
                onTap: () => setState(
                  () => textController.clear(),
                ),
                child: const Icon(
                  Icons.clear,
                  color: Colors.black,
                  size: 18,
                ),
              )
            : null,
      ),
    );
  }
}
