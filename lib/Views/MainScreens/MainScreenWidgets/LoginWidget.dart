import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/GoogleSignInController.dart';
import 'package:flutterwidgethub/Ccontrollers/MicrosoftLoginController.dart';
import 'package:flutterwidgethub/Ccontrollers/NormalSignInController.dart';
import 'package:flutterwidgethub/Ccontrollers/SignUpController.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              color: const Color.fromARGB(255, 4, 25, 43).withOpacity(0.8),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0,
                borderRadius: BorderRadius.circular(10),
                child: TabBar(
                  labelStyle: const TextStyle(
                      letterSpacing: 1.5, fontWeight: FontWeight.w500),
                  padding: const EdgeInsets.only(top: 10),
                  labelPadding: const EdgeInsets.all(5),
                  indicatorPadding: const EdgeInsets.all(0),
                  dividerHeight: 0,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  tabs: const [
                    Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: Tab(text: 'Sign In')),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Tab(text: 'Sign Up'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.68,
                child: const TabBarView(
                  children: [SignInSection(), SignUpSection()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInSection extends StatefulWidget {
  const SignInSection({super.key});

  @override
  State<SignInSection> createState() => _SignInSectionState();
}

class _SignInSectionState extends State<SignInSection> {
  NormalSignInController normalSignInController =
      Get.put(NormalSignInController());

  late TextEditingController emailController;

  late TextEditingController passController;

  RxBool isPassVisible = true.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
      child: Column(

        spacing: 10,
        children: [
          CustomTextField(
            hintText: "Enter Email",
            controller: emailController,
            icon: Iconsax.sms,
          ),
          PasswordField(isPassVisible: isPassVisible, password: passController),
          Container(
            padding: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ElevatedButton(
                onPressed: () async {
                  if (emailController.text.isEmpty ||
                      passController.text.isEmpty) {
                    ElegantNotification.error(
                      width: 360,
                      position: Alignment.topRight,
                      title: const Text('Error'),
                      description: const Text('Fields Cannot Be Empty'),
                      onDismiss: () {},
                    ).show(context);
                    return;
                  }
                  await normalSignInController.normalSignIn(
                      emailController.text, passController.text, context);
                },
                style: ButtonStyle(
                    elevation: const WidgetStatePropertyAll(10),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor: const WidgetStatePropertyAll(
                        Color.fromARGB(255, 2, 20, 34))),
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          const OrSignInDivider(),
          MicrosoftLogin(),
          GoogleLogin()
        ],
      ),
    );
  }
}

class SignUpSection extends StatefulWidget {
  const SignUpSection({super.key});

  @override
  State<SignUpSection> createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  SignUpController signUpController = Get.put(SignUpController());
  late TextEditingController nameController;

  late TextEditingController emailController;

  late TextEditingController passController;

  RxBool isPassVisible = true.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
      child: Column(
        spacing: 10,
        children: [
          CustomTextField(
            hintText: "Enter Name",
            controller: nameController,
            icon: Iconsax.user_edit,
          ),
          CustomTextField(
            hintText: "Enter Email",
            controller: emailController,
            icon: Iconsax.sms,
          ),
          PasswordField(isPassVisible: isPassVisible, password: passController),
          Container(
            padding: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ElevatedButton(
                onPressed: () async {
                  if (emailController.text.isEmpty ||
                      passController.text.isEmpty) {
                    ElegantNotification.error(
                      width: 360,
                      position: Alignment.topRight,
                      title: const Text('Error'),
                      description: const Text('Fields Cannot Be Empty'),
                      onDismiss: () {},
                    ).show(context);
                    return;
                  }
                  await signUpController.SignUp(emailController.text,
                      passController.text, nameController.text, context);
                },
                style: ButtonStyle(
                    elevation: const WidgetStatePropertyAll(10),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor: const WidgetStatePropertyAll(
                        Color.fromARGB(255, 2, 20, 34))),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          const OrSignInDivider(),
          MicrosoftLogin(),
          GoogleLogin()
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData icon;
  const CustomTextField(
      {super.key,
      required this.icon,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // White background color
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(
                255, 3, 20, 39), // Dark blue border color when enabled
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(
                255, 3, 20, 39), // Dark blue border color when focused
            width: 3.0, // Border width when focused
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(
          icon,
          color: const Color.fromARGB(255, 109, 109, 109),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      style: const TextStyle(color: Colors.black), // Text color
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.isPassVisible,
    required this.password,
  });

  final RxBool isPassVisible;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        obscureText: isPassVisible.value,
        controller: password,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white, // White background color
            hintText: "Enter Password",
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(
              Iconsax.key_square,
              color: Color.fromARGB(255, 109, 109, 109),
            ),
            suffixIcon: Obx(() => GestureDetector(
                  onTap: () {
                    isPassVisible.toggle();
                  },
                  child: isPassVisible.value
                      ? const Icon(Iconsax.eye_slash,
                          color: Color.fromARGB(255, 109, 109, 109))
                      : const Icon(Iconsax.eye,
                          color: Color.fromARGB(255, 109, 109, 109)),
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 3, 20, 39), width: 3)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color.fromARGB(255, 3, 20, 39)))),
      ),
    );
  }
}

class MicrosoftLogin extends StatelessWidget {
  MicrosoftLogin({super.key});
  MicrosoftLoginController microsoftLoginController =
      Get.put(MicrosoftLoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: const WidgetStatePropertyAll(10),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: const WidgetStatePropertyAll(
                  Color.fromARGB(255, 255, 255, 255))),
          onPressed: () async {
            await microsoftLoginController.MicrosoftSignIn(context);
          },
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset("assets/MicrosoftLogo.png"),
              ),
              const Text(
                "Sign In With Microsoft",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 20, 34), fontSize: 16),
              ),
            ],
          )),
    );
  }
}
class GoogleLogin extends StatelessWidget {
  GoogleLogin({super.key});
  GoogleAuthService googleAuthService = GoogleAuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: const WidgetStatePropertyAll(10),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: const WidgetStatePropertyAll(
                  Color.fromARGB(255, 255, 255, 255))),
          onPressed: () async {
            await googleAuthService.initiateGoogleSignIn(context);
          },
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset("assets/google.png"),
              ),
              const Text(
                "Sign In With Google",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 20, 34), fontSize: 16),
              ),
            ],
          )),
    );
  }
}

class OrSignInDivider extends StatelessWidget {
  const OrSignInDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Flexible(
              child: Divider(
            color: Colors.white,
            thickness: 1,
            indent: 20,
            endIndent: 10,
          )),
          Text(
            "Or",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Flexible(
              child: Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 20,
          )),
        ],
      ),
    );
  }
}
