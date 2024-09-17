// presentation/screens/popular_courses_screen.dart
import 'package:assigment_codingjunior/persentation/bloc/student/bloc/student_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularCoursesScreen extends StatelessWidget {
  const PopularCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popular Courses')),
      body: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          if (state is StudentLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is StudentLoaded) {
            return Column(
              children: [
                ListTile(
                  title: Text(state.student.name),
                  subtitle: Text(
                      '${state.student.completedCourses} Courses, ${state.student.hoursSpent} Hours'),
                ),
                // Display popular courses here (similar to course details screen)
              ],
            );
          } else {
            return const Center(child: Text('Error loading student details'));
          }
        },
      ),
    );
  }
}
