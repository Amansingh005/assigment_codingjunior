import 'package:assigment_codingjunior/domain/entities/course.dart';
import 'package:assigment_codingjunior/domain/entities/student.dart';

abstract class CourseRepository {
  Future<List<Course>> getCourses();
  Future<Student> getStudentDetails();
}
