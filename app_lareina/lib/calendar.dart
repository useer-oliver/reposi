import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DaysPage extends StatefulWidget {
  const DaysPage({super.key});

  @override
  State<DaysPage> createState() => _DaysPageState();
}

class _DaysPageState extends State<DaysPage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day,DateTime focusedDay){
  setState(() {
    today = day;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendario',style: TextStyle(color:Colors.white),),
      automaticallyImplyLeading: false,
      ),
      body: content(),
    );
  }
  Widget content(){
    return Column(
      children: [
        Container(
          child: TableCalendar(

            
        selectedDayPredicate: (day)=>isSameDay(day, today),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: today,
        onDaySelected: _onDaySelected, 
        
        
      )
        ),
      ],
    );
  }

  
}
