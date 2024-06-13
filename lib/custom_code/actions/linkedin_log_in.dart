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

import 'package:signin_with_linkedin/signin_with_linkedin.dart';

Future<dynamic> linkedinLogIn(BuildContext context) async {
  dynamic result;
  final _linkedInConfig = LinkedInConfig(
    clientId: '86j4b8we4fzjg7',
    clientSecret: 'WPL_AP1.p7dWaveBVyuY6OAU.q+FtIA==',
    redirectUrl: 'https://aweukcldtjiuvocrdwsd.supabase.co/auth/v1/callback',
    scope: ['openid', 'email', 'w_member_social', 'profile'],
  );

  await SignInWithLinkedIn.signIn(
    context,
    config: _linkedInConfig,
    onGetAuthToken: (data) {
      print('Auth token data: ${data.toJson()}');
    },
    onGetUserProfile: (access, user) {
      print('LinkedIn User: ${user.toJson()}');
      result = user.toJson;

      print('Auth token data: ${access.toJson()}');
    },
    onSignInError: (error) {
      print('Error on sign in: $error');
    },
  );

  return result;
}
// SignInWithLink

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
