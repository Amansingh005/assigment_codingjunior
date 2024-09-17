// presentation/blocs/student_bloc.dart
import 'package:assigment_codingjunior/domain/entities/student.dart';
import 'package:assigment_codingjunior/domain/usecases/get_student.dart';
import 'package:assigment_codingjunior/persentation/bloc/course/bloc/course_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
// import '../../domain/entities/student.dart';
// import '../../domain/usecases/get_student.dart';

class StudentState extends Equatable {
  @override
  List<Object> get props => [];
}

class StudentLoading extends StudentState {}

class StudentLoaded extends StudentState {
  final Student student;

  StudentLoaded(this.student);

  @override
  List<Object> get props => [student];
}

class StudentError extends StudentState {}

class LoadStudent extends CourseEvent {}

class StudentBloc extends Bloc<CourseEvent, StudentState> {
  final GetStudentDetails getStudentDetails;

  StudentBloc(this.getStudentDetails) : super(StudentLoading()) {
    on<LoadStudent>((event, emit) async {
      emit(StudentLoading());
      try {
        final student = await getStudentDetails.execute();
        emit(StudentLoaded(student));
      } catch (e) {
        emit(StudentError());
      }
    });
  }
}
