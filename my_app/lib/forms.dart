import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Coding Ninjas Flutter Form';
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.home),
              color: const Color.fromARGB(255, 0, 255, 8),
            ),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.movie)),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.book)),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.school)),
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.location_on_rounded)),
          ],
          // IconButton(icon: Icon(Icons.home), onPressed: ()=>{}),
        ),
        backgroundColor: Colors.black,

        // centerTitle: true,
      ),

      body: MyCustomForm(),
      backgroundColor: Colors.black12,
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Center(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/feeds');
                },
                child: const Text('Submit'),

              )))
        ],
      ),
      
    );
  }
}

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: const Center(
            child: Text('primU',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          )),
          Container(
              child: Center(
            child: Image.asset(
              'assets/logo.png',
              height: 40,
              width: 100,
            ),
          )),
          Container(
              margin: EdgeInsets.all(20),
              child: Center(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Continue'),

                // style: ButtonStyle(backgroundColor: Colors.amber),
              )))
        ],
      ),
    );
  }
}
