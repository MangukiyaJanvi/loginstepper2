import 'package:flutter/material.dart';
import 'package:loginstepper/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? hfalse;
  HomeProvider? htrue;

  @override
  Widget build(BuildContext context) {
    hfalse = Provider.of<HomeProvider>(context, listen: false);
    htrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stepper App'),
        ),
        body: Stepper(
          onStepTapped: (value) {
          },
          currentStep: htrue!.i,
          onStepContinue: () {
            htrue!.oncontinue();
          },
          onStepCancel: () {
            htrue!.oncancle();
          },
          steps: [
            Step(
              isActive: hfalse!.i >= 0,
              state: hfalse!.i >= 0 ? StepState.complete : StepState.disabled,
              title: Text('SignUp'),
              content: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_outline_rounded),
                      label: Text('Full Name'),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail_outline),
                      label: Text('Email id'),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(

                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      label: Text('Password'),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      label: Text('Confirm Password'),
                      focusColor: Color(0xffF64728),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              isActive: hfalse!.i >= 0,
              state: hfalse!.i >= 1 ? StepState.complete : StepState.disabled,
              title: Text('Login'),
              content: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_outline_rounded),
                      label: Text('Full Name'),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      label: Text('Password'),
                      focusColor: Color(0xffF64728),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              isActive: hfalse!.i >= 0,
              state: hfalse!.i >= 2 ? StepState.complete : StepState.disabled,
              title: Text('Home'),
              content: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text('Login Success'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
