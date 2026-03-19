import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentations/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeChangeScreen extends ConsumerWidget {
  const ThemeChangeScreen({super.key});

  static const String routeName = 'theme-change';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeChangeScreen'),
        actions: [
          IconButton(
            onPressed: () {
              // ref.read(themeProvider.notifier).state = !isDarkMode;
              ref.read(themeNotifierProvider.notifier).toggleThemeDarkMode ();
            },
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body:_ThemeChangeView() ,
    );
  }
}

class _ThemeChangeView extends ConsumerWidget {
 
 const _ThemeChangeView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

final List<Color> colors = ref.watch(colorsListProvider);
final AppTheme theme = ref.watch(themeNotifierProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
       return RadioListTile(
        title: Text('Color', style: TextStyle(color: color)),
        subtitle: Text('#${color.value}'),
        activeColor: color,
        value: index,
        groupValue: theme.selectedColor,
        onChanged: (value) {
            ref.read(themeNotifierProvider.notifier).setSelectedColor(value!);
        },
       );
      },
    );
  }
}
