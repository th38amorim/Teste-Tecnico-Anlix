import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_tecnico_anlix/app/patients_list/data/repositories/patients_list_repository.dart';
import 'package:teste_tecnico_anlix/app/patients_list/domain/blocs/patients_list_cubit.dart';
import 'package:teste_tecnico_anlix/app/patients_list/presentation/patients_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PatientsListCubit(PatientsListRepository()),
      child: MaterialApp(
        title: 'Anlix Patients',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const PatientListScreen(),
      ),
    );
  }
}
