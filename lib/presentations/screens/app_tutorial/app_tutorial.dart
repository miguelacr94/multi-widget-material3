import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.imageUrl,
    required this.title,
    required this.caption,
  });
}

final slices = <SlideInfo>[
  SlideInfo(
    imageUrl: 'assets/images/1.png',
    title: 'Hola desde App Tutorial!',
    caption: 'Esta es la primera página',
  ),
  SlideInfo(
    imageUrl: 'assets/images/2.png',
    title: 'Segunda página',
    caption: 'Esta es la segunda página',
  ),
  SlideInfo(
    imageUrl: 'assets/images/3.png',
    title: 'Tercera página',
    caption: 'Agrega más slides aquí',
  ),
];

class AppTutorial extends StatefulWidget {
  const AppTutorial({super.key});

  static const String routeName = 'app-tutorial';

  @override
  State<AppTutorial> createState() => _AppTutorialState();
}

class _AppTutorialState extends State<AppTutorial> {
  late final PageController _pageController;

  bool endReached = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      final page = _pageController.page ?? 0;
      if (!endReached && page >= slices.length - 1.5) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            children: slices
                .map(
                  (slide) => _Slide(
                    title: slide.title,
                    caption: slide.caption,
                    imageUrl: slide.imageUrl,
                  ),
                )
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Salir'),
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    duration: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Comenzar'),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl),
          const SizedBox(height: 16),
          Text(title, style: textStyle),
          const SizedBox(height: 8),
          Text(caption, style: captionStyle),
        ],
      ),
    );
  }
}
