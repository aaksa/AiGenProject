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

Future<bool> loginLinkedinOidc(BuildContext context) async {
  return await SupaFlow.client.auth.signInWithOAuth(
    Provider.linkedin,
    redirectTo: 'https://aweukcldtjiuvocrdwsd.supabase.co/auth/v1/callback',
    authScreenLaunchMode: LaunchMode.externalApplication,
    context: context,
  );
}
