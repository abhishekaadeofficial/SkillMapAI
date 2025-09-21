import 'package:flutter/material.dart';

void main() {
  runApp(SkillMapApp());
}

class SkillMapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillMap.ai',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SkillMap.ai Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome to SkillMap.ai!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Take Skill Test"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text("View Career Paths"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text("Track Progress"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
