import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper2_ui/screen/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeProvider? HPTrue,HPFalse;

  @override
  Widget build(BuildContext context) {

    HPFalse=Provider.of<HomeProvider>(context,listen: false);
    HPTrue=Provider.of<HomeProvider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        body: Stepper(
          onStepTapped: (value) {
            HPFalse!.jump(value);
          },
          currentStep: HPTrue!.i,
          onStepContinue: () {
            setState(
                  () {
                if (HPTrue!.i < 9)
                {
                  HPTrue!.i++;
                }
              },
            );
          },
          onStepCancel: () {
            setState(
                  () {
                if (HPTrue!.i > 0)
                {
                  HPTrue!.i--;
                }
              },
            );
          },
          steps: [
            Step(
                title: Text("Prifile Picture"),
                content: ListTile(
                  title: Text("My profile"),
                  subtitle: Text("Snehal Sangani"),
                ),
                isActive: true),
            Step(
                title: Text("Name"),
                content: ListTile(
                  title: Text("Name"),
                  subtitle: Text("Snehal Sangani"),
                ),
                isActive: true),
            Step(
                title: Text("Number"),
                content: ListTile(
                  title: Text("Phone Number"),
                  subtitle: Text("8956325482"),
                ),
                isActive: true),
            Step(
                title: Text("Email"),
                content: ListTile(
                  title: Text("Email"),
                  subtitle: Text("snehalsangani@gmail.com"),
                ),
                isActive: true),
            Step(
                title: Text("DOB"),
                content: ListTile(
                  title: Text("Date of birth"),
                  subtitle: Text("18/12/2004"),
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
                  subtitle: Text("104,pushpak soc,dharamnagar road"),
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
                  subtitle: Text("Gujarati,hindi"),
                ),
                isActive: true),
            Step(
                title: Text("Biography"),
                content: ListTile(
                  title: Text("Biography"),
                  subtitle: Text("Keep Smile"),
                ),
                isActive: true),
          ],
        ),
      ),
    );
  }
}
