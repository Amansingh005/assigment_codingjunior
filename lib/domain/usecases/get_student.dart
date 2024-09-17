// domain/usecases/get_student.dart
import '../entities/student.dart';
import '../repositories/course_repository.dart';

class GetStudentDetails {
  final CourseRepository repository;

  GetStudentDetails(this.repository);

  Future<Student> execute() async {
    return await repository.getStudentDetails();
  }
}
