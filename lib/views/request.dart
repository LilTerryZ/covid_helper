import 'package:covid_helper/services/widget.dart';
import 'package:flutter/material.dart';
import 'package:covid_helper/services/navi.dart';

class Request extends StatefulWidget {

  const Request({ Key key, this.destination }) : super(key: key);
  final Destination destination;

  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  TextEditingController nameEditingController = new TextEditingController();
  TextEditingController ageEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  submit() async {
    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
        _submitDialog();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading
          ? Container(
        child: Center(child: CircularProgressIndicator()),
      )
          : Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 17, 5, 0),
              child: Text(
                'Request Help',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Form(
              key: formKey,
              child: Column(
                children: [

                  TextFormField(
                    validator: (val) {
                      return RegExp(
                          r"[a-zA-Z]")
                          .hasMatch(val)
                          ? null
                          : "Please Enter Correct name";
                    },
                    controller: nameEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Name"),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  TextFormField(
                    validator: (val) {
                      return RegExp(
                      "[5-9][0-9]")
                          .hasMatch(val)
                          ? null
                          : "Age cannot less than 50";
                    },
                    controller: ageEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Age"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                submit();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff00E09E),
                        const Color(0xff1BD1A5)
                      ],
                    )),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Submit",
                  style: biggerTextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
}

  Future<void> _submitDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Request Submitted Successfully!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Volunteer Will Contact You ASAP'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}



