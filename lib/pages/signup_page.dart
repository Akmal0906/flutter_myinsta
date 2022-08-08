import 'package:flutter/material.dart';
import 'package:flutter_myinsta/pages/signin_page.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
static const String id='signup_page';
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var cpasswordController=TextEditingController();
  var fullnameController=TextEditingController();

  _callSignInPage(){
    Navigator.pushNamed(context,SignInPage.id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(253, 29, 29, 1),
                Color.fromARGB(225, 48, 108, 1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const  Text('Intagram',style: TextStyle(color: Colors.white,fontSize: 45,fontFamily: 'Billabong'),),
                  const   SizedBox(height: 20,),
                  Container(
                    height: 50,
                    padding:const EdgeInsets.only(left: 20,right: 20),
                    margin:const EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: fullnameController,
                      decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'FullName',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 17,letterSpacing: 1)

                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    padding:const EdgeInsets.only(left: 20,right: 20),
                    margin:const EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 17,letterSpacing: 1)

                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    padding:const EdgeInsets.only(left: 20,right: 20),
                    margin:const EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 17,letterSpacing: 1)

                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    padding:const EdgeInsets.only(left: 20,right: 20),
                    margin:const EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: cpasswordController,
                      decoration:const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(color: Colors.white,fontSize: 17,letterSpacing: 1)

                      ),
                    ),
                  ),
                  const   SizedBox(height: 20,),

                  Container(
                    margin:const EdgeInsets.only(right: 20,left: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:const Center(
                      child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 21,letterSpacing: 1),),
                    ),
                  )
                ],
              ),),
              GestureDetector(
                onTap:_callSignInPage,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Text('Do not have account ?',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(width: 20,),
                    Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
              ),
              const  SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
