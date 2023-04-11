import 'package:demo_getx/presentations/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBottomNavigationBar extends GetWidget<HomeController> {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.1,
            ),
          ),
        ),
        child: Row(
          children: [
            _buildBottomNavigationBarItem(
              title: 'First',
              icon: Icons.home,
              index: 0,
            ),
            _buildBottomNavigationBarItem(
              title: 'Second',
              icon: Icons.favorite,
              index: 1,
            ),
            _buildBottomNavigationBarItem(
              title: 'Third',
              icon: Icons.person,
              index: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem({
    required String title,
    required IconData icon,
    required int index,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          controller.onBottomNavigationBarItemTapped(index);
        },
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: controller.selectedIndex.value == index
                      ? Colors.red
                      : Colors.green,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: controller.selectedIndex.value == index
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
