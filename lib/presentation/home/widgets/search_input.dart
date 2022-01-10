import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_bloc.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

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
    return TextField(
      controller: textController,
      onSubmitted: (value) {
        print("Searched");
        BlocProvider.of<ClubFiltersBloc>(context)
            .add(ClubFiltersEvent.onSearchFieldUpdated(value));
      },
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
                  () {
                    textController.clear();
                  },
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
