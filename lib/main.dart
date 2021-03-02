import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),
));

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  String name = 'Vagner Conhariki';
  String email;
  String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Id Card'),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(name == 'Vagner Conhariki'){
            setState(() {
              name = 'Vagner de Oliveira Conhariki';
            });
          }else{
            setState(() {
              name = 'Vagner Conhariki';
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[700],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.grey[700],
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/hackerman.png'),
                  backgroundColor: Colors.white,
                  radius: 60,
                ),
              ),
            ),
            Divider(
              height: 120,
              color: Colors.grey[800],
              thickness: 4,
            ),
            Text(
              'NOME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$name',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Text(
              'SETOR',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'TECNOLOGIA DA INFORMAÇÃO',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'vconhariki@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  '+55 15 99717-5450',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}