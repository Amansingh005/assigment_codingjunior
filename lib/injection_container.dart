// injection_container.dart

import 'package:assigment_codingjunior/domain/repositories/course_repository_impl.dart';
import 'package:assigment_codingjunior/persentation/bloc/course/bloc/course_bloc.dart';
import 'package:get_it/get_it.dart';
import 'domain/usecases/get_courses.dart';

import 'domain/repositories/course_repository.dart';


final sl = GetIt.instance; // GetIt instance

void init() {
  // Register Repositories
  sl.registerLazySingleton<CourseRepository>(() => CourseRepositoryImpl());

  // Register Use Cases
  sl.registerLazySingleton(() => GetCourses(sl<CourseRepository>()));

  // Register BLoC
  sl.registerFactory(() => CourseBloc(sl<GetCourses>()));
}
