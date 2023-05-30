import 'package:flutter/material.dart';
import 'package:lmi/design/constants/app_colors.dart';
import 'package:lmi/features/contact/presentation/pages/contacts_page.dart';
import 'package:lmi/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:lmi/features/product/presentation/pages/product_page.dart';

import 'design/constants/assets.dart';
import 'design/widgets/app_circular_icon_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  var _activePage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        actions: const [
          AppCircularIconButton(iconData: Icons.notifications_outlined,),
          AppCircularIconButton(iconData: Icons.settings_outlined),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(Assets.dashboardBackground,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,),
              ],
            ),
            PageView(
              controller: _pageController,
              children: const [
                DashboardPage(),
                ContactsPage(),
                SizedBox(),
                ProductPage(),
                SizedBox(),
              ],

            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _activePage,
        onTap: (value){
          if(value != 2 && value != 4){

            _pageController.animateToPage(value,
                duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
            setState(() {
              _activePage = value;
            });
          }


        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.layers_outlined),
            activeIcon: Icon(Icons.layers),
            label: "Contact",),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),
            activeIcon: Icon(Icons.file_copy),
            label: "Loan",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: "Product",),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person),
            label: "Bank",),
        ],

      ),
      drawer: const Drawer(),
    );
  }
}
