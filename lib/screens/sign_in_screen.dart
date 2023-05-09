import 'package:flutter/material.dart';
import 'package:fundi_sawa/screens/widgets/password_form_field_widget.dart';
import 'package:fundi_sawa/utils/text_strings.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _fullName;
  String? _userName;
  String? _email;
  String? _contactNumber;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 32),
                const CircleAvatar(
                radius: 60,
                  child: Icon(Icons.person, size: 60),
                ),
                const SizedBox(height: 16),
              const Text('Hello User!', style: mainTitle,
              ),
              const SizedBox(height: 8),
              const Text('Create Your Account For Better Experience', style: subTitle,),
              const SizedBox(height: 32),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      suffixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      // TODO: Add more validation logic here
                      return null;
                      },
                    onSaved: (value) {
                      _fullName = value;
                      },
                  ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        suffixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        // TODO: Add more validation logic here
                        return null;
                        },
                      onSaved: (value) {
                        _userName = value;
                        },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        suffixIcon: const Icon(Icons.email),
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
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Contact Number',
                        suffixIcon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your contact number';
                        }
                        // TODO: Add more validation logic here
                          return null;
                        },
                      onSaved: (value) {
                        _contactNumber = value;
                        },

                    ),
                    const SizedBox(height: 16),
                    PasswordFormField(
                      // onSaved: (value) {
                      //   _password = value;
                      //   },
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Please enter your password';
                      //   }
                        // TODO: Add more validation logic here
                        //   return null;
                        // },
                    ),
                    const SizedBox(height: 32),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              _formKey.currentState?.save();
                              // TODO: Implement sign up logic
                                Navigator.pushReplacementNamed(context, '/home');
                            }
                            },
                          style: ButtonStyleConstants.primaryButtonStyle,
                          child: const Text('Sign Up'),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already have an account? '),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(context, '/login');
                                },
                              child: const Text(
                                'Sign in',
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
              ],
              ),
            ],
            ),
          ),
        ),
    );
  }
}
