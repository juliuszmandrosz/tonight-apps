import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/presentation/home/home_page.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/tickets/ticket_overview_page.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const _pages = [
    HomePage(),
    TicketOverviewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Raver'),
            centerTitle: false,
            actions: [
              GestureDetector(
                onTap: () {
                  context.read<AuthCubit>().signOut();
                  AutoRouter.of(context).replace(const SignInRoute());
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.ticketAlt,
                ),
                label: "Tickets",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: "Favourites",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userAlt,
                ),
                label: "Profile",
              ),
            ],
          ),
          body: _pages[_selectedIndex],
        );
      },
    );
  }
}
