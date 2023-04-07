import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper2_ui/screen/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper ui"),
        ),
        body: Stepper(
          onStepTapped: (value) {
            i=value;
          },
          currentStep: i,
          onStepContinue: () {
            setState(
                  () {
                if (i < 9)
                {
                  i++;
                }
              },
            );
          },
          onStepCancel: () {
            setState(
                  () {
                if (i > 0)
                {
                  i--;
                }
              },
            );
          },
          steps: [
            Step(
                title: Text("Profile"),
                content: ListTile(
                  title: Text("My profile"),
                  subtitle: Text("Ishu Gangani"),
                ),
                isActive: true),
            Step(
                title: Text("Name"),
                content: ListTile(
                  title: Text("Name"),
                  subtitle: Text("Ishu Gangani"),
                ),
                isActive: true),
            Step(
                title: Text("Number"),
                content: ListTile(
                  title: Text("Phone Number"),
                  subtitle: Text("1234567890"),
                ),
                isActive: true),
            Step(
                title: Text("Email"),
                content: ListTile(
                  title: Text("Email"),
                  subtitle: Text("ishugangani24@gmail.com"),
                ),
                isActive: true),
            Step(
                title: Text("DOB"),
                content: ListTile(
                  title: Text("Date of birth"),
                  subtitle: Text("06/08/2004"),
                ),
                isActive: true),
            Step(
                title: Text("Gender"),
                content: ListTile(
                  title: Text("Gender"),
                  subtitle: Text("Female"),
                ),
                isActive: true),
            Step(
                title: Text("Current Location"),
                content: ListTile(
                  title: Text("Location"),
                  subtitle: Text("Uttran,Surat,Varachh"),
                ),
                isActive: true),
            Step(
                title: Text("Nationality"),
                content: ListTile(
                  title: Text("Nationality"),
                  subtitle: Text("Indain"),
                ),
                isActive: true),
            Step(
                title: Text("Language"),
                content: ListTile(
                  title: Text("Language"),
                  subtitle: Text("Gujarati,Hindi,English,French"),
                ),
                isActive: true),
            Step(
                title: Text("Biography"),
                content: ListTile(
                  title: Text("Biography"),
                  subtitle: Text("It's me, I'm the problem.It's me"),
                ),
                isActive: true),
          ],
        ),
      ),
    );
  }
}
