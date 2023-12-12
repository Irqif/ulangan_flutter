import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 70,left: 24,right: 24,bottom: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Menu Akun',style: TextStyle(
                    color: Color(0xff1B1B1B),
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),),
                  Icon(Iconsax.setting_2,weight: 600,)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Image.asset('assets/barcode.png',width: 84,),
                  SizedBox(width: 16,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rizqi Fatur',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                        SizedBox(height: 6,),
                        Text('160002359102020',style: TextStyle(
                          color: Color(0xff6C6C6C)
                        ),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 0.5,
                color: Colors.black,
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Icon(Iconsax.user,color: Colors.black,),
                  SizedBox(width: 6,),
                  Text('Profile Saya',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 0.5,
                color: Colors.black,
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Icon(Iconsax.box,color: Colors.black,),
                  SizedBox(width: 6,),
                  Text('Pesanan',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 0.5,
                color: Colors.black,
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Icon(Iconsax.star,color: Colors.black,),
                  SizedBox(width: 6,),
                  Text('Ulasan',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 0.5,
                color: Colors.black,
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Icon(Iconsax.gift,color: Colors.black,),
                  SizedBox(width: 6,),
                  Text('Reward Saya',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 0.5,
                color: Colors.black,
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Icon(Icons.help_outline,color: Colors.black,),
                  SizedBox(width: 6,),
                  Text('Bantuan',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 0.5,
                color: Colors.black,
              ),
              SizedBox(height: 24,),
            ],
          ),
        ) 
      ),
    );
  }
}