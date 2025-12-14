

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Coffee App",
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/register": (context) => RegistrationScreen(),
        "/home": (context) => HomeScreen(),
      },
    ),
  );
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Email Field
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return "Email required";
                  if (!v.contains("@")) return "@ missing in email";
                  return null;
                },
              ),
              SizedBox(height: 12),

              // Password Field
              TextFormField(
                controller: _password,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() => hidePassword = !hidePassword);
                    },
                    icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return "Password required";
                  if (v.length < 6) return "Minimum 6 characters";
                  return null;
                },
              ),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text("Forgot Password?"),
                  onPressed: () {},
                ),
              ),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(context, "/home");
                    }
                  },
                ),
              ),

              // Register Button
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  child: Text("Register"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text("Welcome to the Home Screen!")),
    );
  }
}

// Registration Screen implementation
class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  bool hidePassword = true;
  bool hideConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Name Field
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return "Name required";
                    return null;
                  },
                ),
                SizedBox(height: 12),

                // Email Field
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return "Email required";
                    if (!v.contains("@")) return "Enter valid email";
                    return null;
                  },
                ),
                SizedBox(height: 12),

                // Phone Field
                TextFormField(
                  controller: _phone,
                  decoration: InputDecoration(
                    labelText: "Phone",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return "Phone required";
                    return null;
                  },
                ),
                SizedBox(height: 12),

                // Password Field
                TextFormField(
                  controller: _password,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() => hidePassword = !hidePassword);
                      },
                      icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty) return "Password required";
                    if (v.length < 6) return "Minimum 6 characters";
                    return null;
                  },
                ),
                SizedBox(height: 12),

                // Confirm Password Field
                TextFormField(
                  controller: _confirmPassword,
                  obscureText: hideConfirmPassword,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () => hideConfirmPassword = !hideConfirmPassword,
                        );
                      },
                      icon: Icon(
                        hideConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty)
                      return "Confirm Password required";
                    if (v != _password.text) return "Passwords do not match";
                    return null;
                  },
                ),
                SizedBox(height: 12),

                // Register Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Register"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // For demo, just navigate to home
                        Navigator.pushReplacementNamed(context, "/home");
                      }
                    },
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
