import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ConsolidatedFFirebaseUser {
  ConsolidatedFFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ConsolidatedFFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ConsolidatedFFirebaseUser> consolidatedFFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ConsolidatedFFirebaseUser>(
            (user) => currentUser = ConsolidatedFFirebaseUser(user));
