// presentation/blocs/course_bloc.dart

import 'package:assigment_codingjunior/domain/entities/course.dart';
import 'package:assigment_codingjunior/domain/usecases/get_courses.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


abstract class CourseEvent {}
class LoadCourses extends CourseEvent {}

abstract class CourseState {}
class CourseLoading extends CourseState {}
class CourseLoaded extends CourseState {
  final List<Course> courses;

  CourseLoaded(this.courses);
}
class CourseError extends CourseState {}

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final GetCourses getCourses;

  CourseBloc(this.getCourses) : super(CourseLoading()) {
    on<LoadCourses>((event, emit) async {
      emit(CourseLoading());
      try {
        final courses = await getCourses.execute();
        emit(CourseLoaded(courses));
      } catch (e) {
        emit(CourseError());
      }
    });
  }
}
