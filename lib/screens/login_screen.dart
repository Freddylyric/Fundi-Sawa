import 'package:flutter/material.dart';
import 'package:fundi_sawa/screens/widgets/password_form_field_widget.dart';
import 'package:fundi_sawa/utils/text_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _email;
  String? _password;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
              child:
              ListView(
                // physics: const AlwaysScrollableScrollPhysics(),
                children:[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Hello',
                            textAlign: TextAlign.center,
                            style: mainTitle),
                            SizedBox(width: 5,),
                            Text(
                              'UserName',
                              // TODO: Replace with actual username
                              textAlign: TextAlign.center,
                              style: mainTitle),
                        ],
                      ),
                      const Text(
                        'Welcome back to Fundisawa',
                        textAlign: TextAlign.center,
                        style: subTitle),
                      const SizedBox(height: 32),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                suffixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                // TODO: Add more validation logic here
                                return null;
                              },
                              onSaved: (value) {
                                _email = value;
                              },
                            ),
                            SizedBox(height: 16),
                            PasswordFormField(),

                            SizedBox(height: 16),
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value ?? false;
                                    });
                                  },
                                ),
                                const Text('Remember me'),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {
                                    // TODO: Implement forgot password logic
                                  },
                                  child: const Text('Forgot password?'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ?? false) {
                                      _formKey.currentState?.save();
                                      // TODO: Implement login logic
                                      Navigator.pushReplacementNamed(context, '/home');
                                    }
                                  },
                                  style: ButtonStyleConstants.primaryButtonStyle,
                                  child: const Text('Login'),
                                ),const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Don't have an account? "),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/signup');
                                      },
                                      child: const Text(
                                        'Sign up',
                                        style: italicOrangeText,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 32),
                      Column(
                        children: [
                          const Text(
                            'or continue with',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage('assets/icons/google_icon.png'), height: 30, width: 30,),
                              SizedBox(width: 32),
                              Image(image: AssetImage('assets/icons/phone_call.png'), height: 30, width: 30,),

                            ],
                          ),
                          const SizedBox(height: 30,)
                        ],

                      ),

                    ],
                  ),],

              ),
              )],
          ),
        ),
      ),
    );
  }
}