import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';

class ClubSearchField extends StatefulWidget {
  const ClubSearchField({Key? key}) : super(key: key);

  @override
  _ClubSearchFieldState createState() => _ClubSearchFieldState();
}

class _ClubSearchFieldState extends State<ClubSearchField> {
  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      onSubmitted: (value) {
        BlocProvider.of<ClubFiltersCubit>(context).searchFieldSubmitted(value);
      },
      onChanged: (_) {
        setState(() {});
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
                    BlocProvider.of<ClubFiltersCubit>(context)
                        .searchFieldSubmitted("");
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
