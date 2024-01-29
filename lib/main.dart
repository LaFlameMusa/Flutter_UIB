import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MYAPP',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MYAPP'),
          backgroundColor: Colors.blue,
        ),
        body: Container( // Используем Container вместо Center
          color: Color.fromARGB(255, 255, 255, 255), // Задаем цвет контейнера
          child: Center( // Добавляем Center для выравнивания элементов
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  height:170.0,

                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Button'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 54, 244, 225),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.drive_file_move),
                  label: Text('Data'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 54, 244, 225),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 54, 244, 225),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 54, 165, 244),
                  ),
                ),
                Text(
                  'Hello World! This is a Text Widget.',
                  style: TextStyle(
                    color: Colors.yellow,
                    backgroundColor: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.volume_up),
                  onPressed: () {},
                  tooltip: 'Text Speaker',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
