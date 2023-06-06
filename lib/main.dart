import 'package:average_fit/model/workout_model.dart';
import 'package:average_fit/view/screens/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(

      /// Providers are above [MyApp] instead of inside it, so that tests
      /// can use [MyApp] while mocking the providers
      // MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(create: (_) => WorkOutLogProvider()),
      //   ],
      //   child: const MyApp(),
      // ),
      MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print('here');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Home',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container();
      }),
    );
  }
}
