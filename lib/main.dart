// main.dart

import 'package:assigment_codingjunior/persentation/bloc/course/bloc/course_bloc.dart';
import 'package:assigment_codingjunior/persentation/pages/course_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;


void main() {
  di.init(); // Call the initialization function
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<CourseBloc>()..add(LoadCourses())), // Use the GetIt instance for the BLoC
      ],
      child: const  MaterialApp(
        title: 'Course App',
        home: CourseDetailScreen(),
      ),
    );
  }
}
