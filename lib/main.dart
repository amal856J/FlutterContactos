import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallListScreen(),
    );
  }
}

class CallListScreen extends StatelessWidget {
  final List<Call> calls = [
    Call(
        name: "Papi (2)",
        date: "8:07 p. m.",
        icon: Icons.call,
        type: "Móvil (+809) 836-1470"),
    Call(
        name: "Esperanza Blanco",
        date: "11:25 a. m.",
        icon: Icons.call,
        type: "Móvil +1 829-546-3527"),
    Call(
        name: "Margaret (2)",
        date: "10:12 a. m.",
        icon: Icons.call,
        type: "Móvil +1 809-840-7482"),
    Call(
        name: "Mami",
        date: "8:33 p. m.",
        icon: Icons.call,
        type: "Móvil +1 829-690-9170"),
    Call(
        name: "(829) 524-8768",
        date: "12:25 p. m.",
        icon: Icons.call,
        type: "Sin Guardar"),
    Call(
        name: "Katherine",
        date: "9:03 a. m.",
        icon: Icons.call,
        type: "Móvil +1 849-637-8156"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de llamadas'),
      ),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/contact_icon.png'),
            ),
            title: Text(call.name),
            subtitle: Text('${call.type} - ${call.date}'),
            trailing: Icon(call.icon),
          );
        },
      ),
    );
  }
}

class Call {
  final String name;
  final String date;
  final IconData icon;
  final String type;

  Call({
    required this.name,
    required this.date,
    required this.icon,
    required this.type,
  });
}
