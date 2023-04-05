import 'package:flutter/material.dart';

class UserDetailsPage extends StatelessWidget {
  final String userId;

  const UserDetailsPage({
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('User Details'),
      ),
    );
  }
}
