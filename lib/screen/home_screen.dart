import 'package:flutter/material.dart';

class age_calculator extends StatefulWidget {
  const age_calculator({Key? key}) : super(key: key);

  @override
  State<age_calculator> createState() => _age_calculatorState();
}

class _age_calculatorState extends State<age_calculator> {
  TextEditingController txtDD = TextEditingController();
  TextEditingController txtMM = TextEditingController();
  TextEditingController txtYY = TextEditingController();
  TextEditingController txtdd = TextEditingController();
  TextEditingController txtmm = TextEditingController();
  TextEditingController txtyy = TextEditingController();
  int? DD, MM, YY;
  int? dd, mm, yy;
  int? a, a1, a2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEAEAEC),
        centerTitle: true,
        title: Text(
          "Age Calcluter",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xff6E7170),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Today's Date",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black),
                        hintText: "DD",
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder()),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black),
                        hintText: "MM",
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder()),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black),
                        hintText: "YY",
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder()),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Date of Birth",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black),
                        hintText: "DD",
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder()),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black),
                        hintText: "MM",
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder()),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black),
                        hintText: "YY",
                        helperStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder()),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffD9DDE0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        DD = int.parse(txtDD.text);
                        MM = int.parse(txtMM.text);
                        YY = int.parse(txtYY.text);
                        dd = int.parse(txtdd.text);
                        mm = int.parse(txtmm.text);
                        yy = int.parse(txtyy.text);
                        a = DD! - dd!;
                        a1 = MM! - mm!;
                        a2 = YY! - yy!;
                      });
                    },
                    child: Text(
                      "Calculate",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        DD = 0;
                        MM = 0;
                        YY = 0;
                        a = 0;
                        a1 = 0;
                        a2 = 0;
                        dd = 0;
                        mm = 0;
                        yy = 0;
                      });
                    },
                    child: Text(
                      "Clear",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Your Age ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  alignment: Alignment.center,
                  child: Text("$a",
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  alignment: Alignment.center,
                  child: Text(
                    "$a1",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 120,
                  color: Color(0xffD9DDE0),
                  alignment: Alignment.center,
                  child: Text("$a2",
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.black26,
    );
  }
}


