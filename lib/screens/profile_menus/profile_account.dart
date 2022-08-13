import 'package:flutter/material.dart';
import '../main_activity/home_page.dart';
import '../main_activity/profile_page.dart';
import 'package:selphie_splash/constants.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back, color: Colors.black,)),
        elevation: 0.5,
        titleSpacing: 0,
        title: Text('Account', style: kOnboardTextSmall.copyWith(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Item(text: 'Your Activity',),
            Item(text: 'Social Circle (10K followers)',),
            Item(text: 'Language',),
            Item(text: 'Contacts Syncing',),
            Item(text: 'Mobile Data Usage',),
            Item(text: 'Original Selfies, Posts, Memes, SVlogs & Moods',),
            Item(text: 'Items You\'ve Admired & Viewed',),
            SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.text,

  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Text(text, style: TextStyle(color: Colors.black, fontSize: 16),),
                    SizedBox(height: 25,),
                    Container(color: Colors.blue, width: double.infinity,height: 0.5,),
                  ],
                )
              ),

    );
  }
}
