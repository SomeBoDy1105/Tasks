import 'package:flutter/material.dart';
import 'package:flutter_task2/todolist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Todo App',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 100),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
                  minWidth: 200,
              color: Colors.purple,
              padding: const EdgeInsets.all(20),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TodoList()),
                );
              },
              child: const Text('Get started now',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20)
                    
                    ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
