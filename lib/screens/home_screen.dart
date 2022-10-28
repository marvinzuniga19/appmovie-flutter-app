import 'package:appmoovies/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies in theaters'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView (
        child: Column(
          children: const [
            //Main Cards
            CardSwiper(),

            //Movie Slider
            MoovieSlider(),
             

          ],
        ),
      )
    );
    
  }
}
