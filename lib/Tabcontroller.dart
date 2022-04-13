import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  // List<String> urls = [
  //   "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
  //   "https://images.squarespace-cdn.com/content/v1/57d5245815d5db80eadeef3b/1558864684068-1CX3SZ0SFYZA1DFJSCYD/ke17ZwdGBToddI8pDm48kIpXjvpiLxnd0TWe793Q1fcUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcZwk0euuUA52dtKj-h3u7rSTnusqQy-ueHttlzqk_avnQ5Fuy2HU38XIezBtUAeHK/Marataba+Safari+lodge",
  //   "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
  //   "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
  //   "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
  //   "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
  //   "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
  //   "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
  //   "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  // ];
  List<String> imageNames = [
    'aiwa.jpg',
    'dressmall.jpg',
    'manavatti.jpg',
    'afc.png',
    'greenpark.jpg',
    'newbharath.jpg',
    'pkstore.jpg',
    'secondday.jpg',
    'twenty.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Color(0xFFFE8C68),
            unselectedLabelColor: Color(0xFF555555),
            labelColor: Color(0xFFFE8C68),
            labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
            tabs: [
              Tab(
                text: "Grocery Shops",
              ),
              Tab(
                text: "Textile Shops",
              ),
              Tab(
                text: "Hotels",
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10),
            height: 200.0,
            child: TabBarView(
              children: [
                //Now let's create our first tab page
                Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //Now let's add and test our first card
                      CatagoryCard(
                        imageNames[0],
                        // urls[0],
                        "Aiwa Hypermarket",
                        "Nileswar",
                      ),
                      CatagoryCard(
                        imageNames[6],
                        "Pk Store",
                        "Nileswar",
                      ),
                      CatagoryCard(
                        imageNames[8],
                        "Twenty Twenty",
                        "Nileswar",
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //Here you can add what ever you want
                      CatagoryCard(
                        imageNames[1],
                        "Dress Mall",
                        "Nileswar",
                      ),
                      CatagoryCard(
                          //urls[8],
                          imageNames[2],
                          "Manavatti",
                          "Nileswar"),
                    ],
                  ),
                ),
                Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //Here you can add what ever you want
                      CatagoryCard(
                        //urls[6],
                        imageNames[4],
                        "Green Park",
                        "Nileswar",
                      ),
                      CatagoryCard(
                          // urls[8],
                          imageNames[5],
                          "New Bharath",
                          "Nileswar"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget CatagoryCard(
  String imgUrl,
  String hotelName,
  String location,
) {
  return Card(
    margin: EdgeInsets.only(right: 22.0),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/$imgUrl"),
          fit: BoxFit.fill,
          scale: 5.0,
        )),
        width: 200.0,
        // child: Image.asset("assets/$imgUrl",height: 200,width: 200,),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
