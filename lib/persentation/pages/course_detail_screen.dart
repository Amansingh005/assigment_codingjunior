// presentation/screens/course_detail_screen.dart

import 'package:assigment_codingjunior/persentation/bloc/course/bloc/course_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Details')),
      body: BlocBuilder<CourseBloc, CourseState>(
        builder: (context, state) {
          if (state is CourseLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CourseLoaded) {
            return ListView.builder(
              itemCount: state.courses.length,
              itemBuilder: (context, index) {
                final course = state.courses[index];
                return ListTile(
                  title: Text(course.title.toString()),
                  subtitle: Text('${course.lessonCount} lessons'),
                  trailing: Text(course.rating.toString()),
                );
              },
            );
          } else if (state is CourseError) {
            return const Center(child: Text('Error loading courses'));
          }
          return Container();
        },
      ),
    );
  }
}
