import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        // Lógica para cambiar entre pantallas
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/calendar');
          break;
          case 1:
            Navigator.pushNamed(context, '/list');
          break;
          case 2:
            Navigator.pushNamed(context, '/friends');
          break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Lista',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: 'Amigos',
        ),
      ],
    );
  }
}
