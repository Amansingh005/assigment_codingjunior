// domain/usecases/get_courses.dart
import '../entities/course.dart';
import '../repositories/course_repository.dart';

class GetCourses {
  final CourseRepository repository;

  GetCourses(this.repository);

  Future<List<Course>> execute() async {
    return await repository.getCourses();
  }
}
