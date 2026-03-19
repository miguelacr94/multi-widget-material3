import 'package:flutter/material.dart';
import 'package:widget_app/presentations/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeChangeScreen extends ConsumerWidget {
  const ThemeChangeScreen({super.key});

  static const String routeName = 'theme-change';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeChangeScreen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeProvider.notifier).state = !isDarkMode;
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

final colors = ref.watch(colorsListProvider);
final selectedColorIndex = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
       return RadioListTile(
        title: Text('Color', style: TextStyle(color: color)),
        subtitle: Text('#${color.value}'),
        activeColor: color,
        value: index,
        groupValue: selectedColorIndex,
        onChanged: (value) {
          ref.read(selectedColorProvider.notifier).state = value!;
        },
       );
      },
    );
  }
}
