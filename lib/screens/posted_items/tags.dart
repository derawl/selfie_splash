import 'package:flutter/material.dart';
import '../main_activity/home_page.dart';
import '../main_activity/profile_page.dart';
import 'package:selphie_splash/constants.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back, color: Colors.black,)),
        elevation: 0.2,
        titleSpacing: 0,
        title: Text('Tags', style: kOnboardTextSmall.copyWith(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Pallet(),
            Pallet1(),
            Pallet2(),
            Pallet(),
            Pallet1(),
            Pallet2(),
          ],
        ),
      ),
    );
  }
}

class Pallet extends StatelessWidget {
  const Pallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 5, left: 5),
      child: ContainerCard(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/selfie1.jpeg'),),
                  SizedBox(width: 5,),
                  Text('Alice stark 🇬🇭', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              ElevatedButton(onPressed: (){showDialog(context: context, builder: FollowModal);}, child: Text('Follow'),
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              )
            ],
          )
      ),

    );
  }
}

class Pallet1 extends StatelessWidget {
  const Pallet1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 5, left: 5),
      child: ContainerCard(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/selfie1.jpeg'),),
                  SizedBox(width: 5,),
                  Text('Alice stark 🇬🇭', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              ElevatedButton(onPressed: (){showDialog(context: context, builder: AcceptModal);}, child: Text('Accept As?'),
                style: ElevatedButton.styleFrom(
                    elevation: 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              )
            ],
          )
      ),

    );
  }
}

class Pallet2 extends StatelessWidget {
  const Pallet2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 5, left: 5),
      child: ContainerCard(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/selfie1.jpeg'),),
                  SizedBox(width: 5,),
                  Text('Alice stark 🇬🇭', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              ElevatedButton(onPressed: (){showDialog(context: context, builder: ChangeStatusModal);},
                child: Text('Following', style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                    elevation: 1,
                    primary: Colors.white,
                    side: BorderSide(color: Colors.grey, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              )
            ],
          )
      ),

    );
  }
}

Widget FollowModal(BuildContext context) =>AlertDialog(
  contentPadding: EdgeInsets.all(10),
  backgroundColor: Colors.transparent,
  content: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      height: 320,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Follow Me As?', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 18),),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 40,),
                SizedBox(width: 5,),
                Text('Lover', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.home, color: Colors.green, size: 40,),
                SizedBox(width: 5,),
                Text('Family', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 40,),
                SizedBox(width: 5,),
                Text('Bestie', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.person, color: Colors.blue, size: 40,),
                SizedBox(width: 5,),
                Text('Friend', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
          ],
        ),
      )
  ),
);

Widget AcceptModal(BuildContext context) =>AlertDialog(
  contentPadding: EdgeInsets.all(10),
  backgroundColor: Colors.transparent,
  content: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      height: 320,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Accept Me As?', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 18),),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 40,),
                SizedBox(width: 5,),
                Text('Lover', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.home, color: Colors.green, size: 40,),
                SizedBox(width: 5,),
                Text('Family', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 40,),
                SizedBox(width: 5,),
                Text('Bestie', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.person, color: Colors.blue, size: 40,),
                SizedBox(width: 5,),
                Text('Friend', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
          ],
        ),
      )
  ),
);

Widget ChangeStatusModal(BuildContext context) =>AlertDialog(
  contentPadding: EdgeInsets.all(10),
  backgroundColor: Colors.transparent,
  content: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      height: 370,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Change Status To?', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 18),),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 40,),
                SizedBox(width: 5,),
                Text('Lover', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.home, color: Colors.green, size: 40,),
                SizedBox(width: 5,),
                Text('Family', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 40,),
                SizedBox(width: 5,),
                Text('Bestie', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.person, color: Colors.blue, size: 40,),
                SizedBox(width: 5,),
                Text('Friend', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.block, color: Colors.black, size: 40,),
                SizedBox(width: 5,),
                Text('Unfollow', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 5,),
            Container(color: Colors.blueGrey, width: double.infinity,height: 0.5,),
          ],
        ),
      )
  ),
);