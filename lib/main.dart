import 'package:flutter/material.dart';
import 'routing/app_router.dart';

//Parse Server Configuration
const applicationId = '28waV9AfeM41CJcpbO1y6fK2PCGeBGOaNoLXDLNB';
const clientKey = 'At6v8X3kmK4MEdj8yGmjqcjUc1hExBtWtOcxaP7I';
const parseURL = 'https://parseapi.back4app.com';

void main() {
  runApp(MyApp(router: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter router;

  const MyApp({super.key, required this.router});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Task',
      onGenerateRoute: router.generateRoute,
      routes: router.routes,
    );
  }
}

