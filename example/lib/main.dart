import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(CarouselDemo());

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => CarouselDemoHome(),
      },
    );
  }
}

class CarouselDemoHome extends StatefulWidget {
  @override
  State<CarouselDemoHome> createState() => _CarouselDemoHomeState();
}

class _CarouselDemoHomeState extends State<CarouselDemoHome> {
  // PageController? _controller;

  @override
  void dispose() {
    // _controller?.dispose();
    super.dispose();
  }

  void _listener() {
    // print(_controller?.page.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel demo'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          disableGesture: true,
          itemCount: 2,
          // onPageControllerUpdated: (controller) {
          //   _controller = controller;
          //   _controller?.addListener(_listener);
          // },
          offsetChangeListener: (offset, original) {
            print(offset);
          },
          options: CarouselOptions(
            aspectRatio: 1,
            autoPlay: true,
            reverse: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 6),
          ),
          itemBuilder: (context, index, realIndex) {
            return Center(
              child: Container(
                height: 200,
                width: 200,
                color: index == 0 ? Colors.red : Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
