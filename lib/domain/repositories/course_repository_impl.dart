// data/repositories/course_repository_impl.dart
import '../../domain/entities/course.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  @override
  Future<List<Course>> getCourses() async {
    return [
      Course(name: 'Photoshop Editing Course', lesson: 30, duration: '13h 30m', isLocked: false),
      Course(name: 'Adobe XD Editing Course', lesson: 30, duration: '12h 45m', isLocked: true),
      // Add more courses here
    ];
  }

  @override
  Future<Student> getStudentDetails() async {
    return Student(
      name: 'Aman singh',
      courseProgress: 'Mathematics Course',
      completedCourses: 20,
      hoursSpent: 455,
    );
  }
}
