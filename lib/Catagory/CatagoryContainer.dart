import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatagoryContainer extends StatefulWidget {
  const CatagoryContainer({Key? key}) : super(key: key);

  @override
  _CatagoryContainerState createState() => _CatagoryContainerState();
}

class _CatagoryContainerState extends State<CatagoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100, borderRadius: BorderRadius.circular(15)),
      height: 230,
      width: 350,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Grocery Shops",style: TextStyle(fontSize: 10),),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Hotels"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Textiles"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Hardware"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Fancy"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Medical"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Vegitable/Fruits"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Home Appliances"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Beauty Parler"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Jwellery"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Saloon"),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent.shade100),
                  ),
                  onPressed: () {},
                  child: Text("Furniture"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
