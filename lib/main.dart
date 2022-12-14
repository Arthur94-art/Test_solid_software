import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/bloc/generate_numbers_bloc.dart';
import 'package:test_solid_software/view/home_page.dart';

import 'data/generated_color_repo.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomColorBloc(
        GeneratedColorRepo(),
      ),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
