// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool> loginLinkedin(BuildContext context) async {
  return await SupaFlow.client.auth.signInWithOAuth(
    Provider.linkedin,
    redirectTo: 'https://aweukcldtjiuvocrdwsd.supabase.co/auth/v1/callback',
    authScreenLaunchMode: LaunchMode.externalApplication,
    context: context,
  );

  // make login action
// Here is an example of a login action function in Flutter

//  GoRouter.of(context).prepareAuthEvent();
//       final user = await authManager.signInWithEmail(
//         context,
//         _model.emailLoginWebTextController.text,
//         _model.passwordLoginWebTextController.text,
//       );
//       if (user == null) {
//         return;
//       }
//       context.goNamedAuth('Search_Provider_Fix', context.mounted);
//     },

  // // First, we need to get the user's input for their email and password
  // String email = "example@gmail.com";
  // String password = "password123";

  // // Next, we can use a try-catch block to handle any errors that may occur during the login process
  // try {
  //   // Here, we would make an API call to our backend server to authenticate the user's credentials
  //   // For the sake of this example, we will assume that the API call returns a boolean value indicating whether the login was successful or not
  //   bool loginSuccessful = await apiCall(email, password);

  //   // If the login was successful, we can navigate to the home screen of our app
  //   if (loginSuccessful) {
  //     Navigator.pushReplacementNamed(context, '/home');
  //   } else {
  //     // If the login was not successful, we can display an error message to the user
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text("Login Failed"),
  //           content:
  //               Text("Please check your email and password and try again."),
  //           actions: [
  //             FlatButton(
  //               child: Text("OK"),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // } catch (e) {
  //   // If an error occurs during the login process, we can display an error message to the user
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text("Error"),
  //         content: Text(
  //             "An error occurred during the login process. Please try again later."),
  //         actions: [
  //           FlatButton(
  //             child: Text("OK"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
