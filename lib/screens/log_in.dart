import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 150),
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 55,
                    fontFamily: 'Italiana',
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'E-mail address',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value != null && value.contains('@') ? null : 'Enter a valid email',
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value != null && value.length >= 6 ? null : 'Password too short',
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Logic for login (optional: Firebase or custom logic)
                      Navigator.pushReplacementNamed(context, '/main');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2D1300),
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 15),
                const Text("Or login using"),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.g_mobiledata, size: 50, color: Color(0xFF2D1300)),
                    SizedBox(width: 10),
                    Icon(Icons.facebook, size: 30, color: Color(0xFF2D1300)),
                  ],
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/signup'),
                  child: const Text(
                    'Don’t have an account? Sign up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
