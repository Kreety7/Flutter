import 'package:flutter/material.dart';
import 'package:instagram/app_text_styles.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen ({super.key});

  @override
  State<SignupScreen > createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen > {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3E8DF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 60, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
              ),
              SizedBox(height: 12),
              Text(
                'Get On Board',
                style: AppTextStyle.poppinsBold.copyWith(fontSize: 28),
              ),
              Text(
                'Create your profile to start your journey',
                style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 16),
              ),
              SizedBox(height: 30),
              TextFormField(
                style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                keyboardType: TextInputType.text,
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  hintStyle: AppTextStyle.poppinsRegular.copyWith(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  prefixIcon: Icon(Icons.person, size: 26),
                ),
              ),
              TextFormField(
                style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'E-Mail',
                  hintStyle: AppTextStyle.poppinsRegular.copyWith(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  prefixIcon: Icon(Icons.mail, size: 26),
                ),
              ),
              TextFormField(
                style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                keyboardType: TextInputType.phone,
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Phone No',
                  hintStyle: AppTextStyle.poppinsRegular.copyWith(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  prefixIcon: Icon(Icons.phone, size: 26),
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                controller: passwordController,
                obscureText: isObscure,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: AppTextStyle.poppinsRegular.copyWith(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  prefixIcon: Icon(Icons.fingerprint, size: 26),
                  suffixIcon: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {}, child: Text('Forgot Password?',
                  style: AppTextStyle.poppinsMedium.copyWith(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  minimumSize: Size(double.infinity, 56),
                ),
                onPressed: () {},
                child: Text('Signup'.toUpperCase(),
                  style: AppTextStyle.poppinsMedium.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'or'.toUpperCase(),
                  style: AppTextStyle.poppinsRegular.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  minimumSize: Size(double.infinity, 56),
                ),
                onPressed: () {},
                child: Text('Connect with Phone No'.toUpperCase(),
                  style: AppTextStyle.poppinsMedium.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 20),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  backgroundColor: Color(0xffc6d8e4),
                  minimumSize: Size(double.infinity, 60),
                  side: BorderSide(color: Color(0xffc6d8e4) , width: 1.5),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/google.png',
                      width: 26,
                      height: 36,),
                    SizedBox(width: 10),Text('Connect with Google',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Login',
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 18,
                      color: Colors.blue,
                    ),

                  )
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}