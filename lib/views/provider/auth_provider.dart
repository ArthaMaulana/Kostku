import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _fireAuth = FirebaseAuth.instance;

class AuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var islogin = true;
  var enteredEmail = '';
  var enteredPassword = '';

  Future<void> submit() async {
    final isValid = form.currentState?.validate() ?? false;

    if (!isValid) {
      return;
    }

    form.currentState?.save();

    try {
      if (islogin) {
        final userCredential = await _fireAuth.signInWithEmailAndPassword(
          email: enteredEmail,
          password: enteredPassword,
        );
        // Tambahkan logika setelah login berhasil, seperti navigasi ke halaman utama
      } else {
        final userCredential = await _fireAuth.createUserWithEmailAndPassword(
          email: enteredEmail,
          password: enteredPassword,
        );
        // Tambahkan logika setelah registrasi berhasil
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'email-already-in-use') {
          print("Email sudah digunakan");
        } else if (e.code == 'wrong-password') {
          print("Password salah");
        } else if (e.code == 'user-not-found') {
          print("Pengguna tidak ditemukan");
        }
        // Tambahkan penanganan kesalahan lainnya jika diperlukan
      }
    }

    notifyListeners();
  }
}
