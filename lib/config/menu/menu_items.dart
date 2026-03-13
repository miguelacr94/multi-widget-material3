import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Animados',
    subTitle: 'Elementos animados',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItem(
    title: 'App Tutorial',
    subTitle: 'Tutorial de la app',
    link: '/app-tutorial',
    icon: Icons.video_call,
  ),
  MenuItem(
    title: 'Progress',
    subTitle: 'Barra de progreso',
    link: '/progress',
    icon: Icons.bar_chart,
  ),
  MenuItem(
    title: 'Snackbar',
    subTitle: 'Mostrar mensaje',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'UI Controls',
    subTitle: 'Elementos de UI',
    link: '/ui-controls',
    icon: Icons.settings,
  ),
];
