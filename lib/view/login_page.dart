import 'package:flutter/material.dart';
import 'package:sound_cloud/component/elevated_button.dart';

class LoginPage extends StatefulWidget {


  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height / 10),
      const Text(
        'Allow "best app ever" access to your \n SoundCloud account?',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 50,
      ),
      const CustomElevatedButton(
        buttonTextColor: Colors.white,
        buttonText: 'Sign in with Facebook',
        customIcon: Icon(Icons.facebook),
        backgroundButtonColor: Colors.blue,
      ),
      const SizedBox(
        height: 10,
      ),
      const CustomElevatedButton(
        buttonTextColor: Colors.black87,
        buttonText: 'Sign in with Google',
        customIcon: Icon(
          Icons.g_mobiledata_sharp,
          color: Colors.black87,
          size: 40,
        ),
        backgroundButtonColor: Colors.white,
      ),
      const SizedBox(
        height: 10,
      ),
      const CustomElevatedButton(
        buttonTextColor: Colors.white,
        buttonText: 'Sign in with Apple',
        customIcon: Icon(
          Icons.apple,
          color: Colors.white,
        ),
        backgroundButtonColor: Colors.black,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.3,
            child: const Divider(color: Colors.grey, thickness: 2, height: 1),
          ),
          const SizedBox(width: 10),
          Text(
            "or",
            style:
                TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.3,
            child: const Divider(color: Colors.grey, thickness: 2, height: 1),
          ),
        ],
      ),
      const SizedBox(height: 40),
      customTabBar(),
      customTabBarComponent(),
      Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange)),
            onPressed: () {},
            child: const Text(
              "Sign in and Connect",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      TextButton(
          onPressed: () {},
          child: const Text(
            "Cancle",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Forget your password",style: TextStyle(
            color: Colors.blue
          ),),
          SizedBox(width: 5,),
          Text("or"),
          SizedBox(width: 5,),
          Text("email address",style: TextStyle(
              color: Colors.blue
          ),),
          SizedBox(width: 5,),
          Text("?")
        ],
      ),
      const SizedBox(height: 30,)
    ])));
  }

  Expanded customTabBarComponent() {
    return Expanded(
      flex: 8,
      child: TabBarView(
        controller: _tabController,
        children: [
          // first tab bar view widget
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Your email address",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        //Set text style
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.emailAddress,
                        //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                        //Set decoration
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            //Create rounded outlined border
                            prefixIcon: Icon(Icons
                                .email)), // Set the hint text that will be shown when TextField is empty
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Your password",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54))),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        //Set text style
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.emailAddress,
                        //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                        //Set decoration
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          //Create rounded outlined border
                          prefixIcon: Icon(Icons.password_outlined),
                        ), // Set the hint text that will be shown when TextField is empty
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // second tab bar view widget
          const Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded customTabBar() {
    return Expanded(
      flex: 1,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        // height: kToolbarHeight + 8.0,
        padding:
        const EdgeInsets.only(top: 1.0, right: 1.0, left: 1.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0)),
        ),
        child: TabBar(
          indicator: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0)),
              color: Colors.white),
          controller: _tabController,
          // give the indicator a decoration (color and border radius)
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.black,
          tabs: const [
            // first tab [you can add an icon using the icon property]
            Tab(
              text: 'Sign in',
            ),

            // second tab [you can add an icon using the icon property]
            Tab(
              text: 'Create account',
            ),
          ],
        ),
      ),
    );
  }
}
