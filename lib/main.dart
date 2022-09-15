import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:table_calendar/table_calendar.dart';

import 'components/border_input_widget.dart';
import 'components/illustration_widget.dart';
import 'iniciando_calendario.dart';

void main() {
  // Para que o calendario funcione, é necessario que o inicio do app
  // seja igual este na linha debaixo
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _calendario = IniciandoCalendario();

  @override
  Widget build(BuildContext context) {
    final kFirstDay = DateTime(_calendario.kToday.year,
        _calendario.kToday.month - 3, _calendario.kToday.day);
    final kLastDay = DateTime(_calendario.kToday.year,
        _calendario.kToday.month + 3, _calendario.kToday.day);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          // Esse é o código para exibir as imagens do site  https://undraw.co/illustrations
          // Você escolhe a image que quiser lá e apenas substitui o "a_better_world"
          // Repare que o IllustrarionWidget está dentro de um SizedBox
          // A unica função deste SizedBox é definir o tamanho da imagem no App
          SizedBox(
            height: 300,
            child: IllustrarionWidget(
              color: Colors.purple,
              illustration: UnDrawIllustration.family,
            ),
          ),
          SizedBox(height: 30),
          // Aqui é código para adicionar um input na tela
          // A unica funcao do padding foi desencostar o input das bordas
          // Repare que o controller do campo eu deixei generico, vcs devem alterar caso queiram deixar funcional
          // repare tmbem no textInputType, onde eu defino se o campo sera um e-mail, numero, texto...
          // É importante alterar.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BorderInputWidget(
              controller: TextEditingController(),
              label: "Digite o seu e-mail",
              fontSize: 18,
              textInputType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(height: 30),
          // O codigo abaixo faz o calendario
          // Repare que eu criei o arquivo IniciandoCalendario
          // Nele contem itens importantes para o funcionamento do calendario
          TableCalendar(
            locale: "pt_BR",
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _calendario.focusedDay,
            calendarFormat: _calendario.calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_calendario.selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {},
            onFormatChanged: (format) {},
            onPageChanged: (focusedDay) {},
          ),
        ],
      ),
    );
  }
}
