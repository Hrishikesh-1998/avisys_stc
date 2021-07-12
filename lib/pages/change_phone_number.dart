import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lmra/constant/constants.dart';

class Change_phone_Number extends StatefulWidget {
  @override
  _Change_phone_NumberState createState() => _Change_phone_NumberState();
}

class _Change_phone_NumberState extends State<Change_phone_Number> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kPurple,
              size: 30.0,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Change cell phone number',
                style:
                TextStyle(fontFamily: 'STCForward-Bold', fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //SizedBox(height: 245.0,),
                  Form(key:_formKey,
                    child:  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Cell Phone Number',
                      focusedBorder:UnderlineInputBorder(
                        borderSide: const BorderSide(color: kPink, width: 2.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP()));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: kPink,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 19.0,horizontal: 50.0,),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 17.0,
                          color:kWhite,
                          fontFamily: 'STCForward-Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
