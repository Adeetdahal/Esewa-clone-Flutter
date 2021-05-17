import 'package:esewa_app/iconModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flag = false;
  TextStyle homeStyle = TextStyle(color: Colors.white, fontSize: 12.0);
  List<Map<String, dynamic>> icons = [
    {"icon": Icons.mobile_friendly, "text": "Topup"},
    {"icon": Icons.lightbulb, "text": "Electricity"},
    {"icon": Icons.tap_and_play, "text": "Khanepani"},
    {"icon": Icons.router, "text": 'Internet'},
    {"icon": Icons.airline_seat_flat, "text": 'Airlines'},
    {"icon": Icons.build, "text": 'Govt. Payment'},
    {"icon": Icons.comment_bank, "text": "In't Flights"},
    {"icon": Icons.umbrella, "text": 'Cable Car'},
    {"icon": Icons.comment_bank, "text": 'Co-opertaive Withdraw'},
    {"icon": Icons.tv_outlined, "text": 'TV'},
    {"icon": Icons.school_outlined, "text": 'School'},
    {"icon": Icons.umbrella, "text": 'Insurance'},
    {"icon": Icons.credit_card_outlined, "text": 'credit Card'},
    {"icon": Icons.umbrella, "text": 'Finance'},
    {"icon": Icons.work_off_outlined, "text": 'EMI'},
    {"icon": Icons.account_balance_wallet_outlined, "text": 'Recharge'},
    {"icon": Icons.local_hospital_outlined, "text": 'Health'},
    {"icon": Icons.my_location, "text": 'Cashout'},
    {"icon": Icons.directions_bus_outlined, "text": 'Bus Ticket'},
    {"icon": Icons.movie_outlined, "text": 'Movie'},
    {"icon": Icons.how_to_vote, "text": 'Voting'},
  ];
  List<IconModel> iconmodel1 = [];
  bool wait = false;


  List<Map<String, dynamic>> images = [
    {"image": AssetImage('assets/ig.png'), 'label': 'MeroShare & Demat Renew'},
    {"image": AssetImage('assets/gallery.png'), 'label': 'Nepal Multipurpose'},
    {"image": AssetImage('assets/mail.png'), 'label': 'eSewa Privilege'},
    {"image": AssetImage('assets/camera.png'), 'label': 'Gyapu Marketplace'},
    {"image": AssetImage('assets/esewa.jpeg'), 'label': 'Ncell Pack'}
  ];
  List<IconModel> articles = [];

  @override
  void initState() {
    articles = (icons)?.map((dynamic e) {
      return e == null ? null : IconModel.fromJson(e as Map<String, dynamic>);
    })?.toList();
    print(articles);
    wait = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.0,
        title: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 50,
              ),
              SizedBox(width: 5.0),
              Expanded(
                  child: Text(
                'Login/Register',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: wait
          ? Container(
              color: Colors.black87,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: Container(
                        color: Colors.black54,
                        child: GridView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Icon(
                                    Icons.account_balance_wallet_outlined,
                                    color: Colors.green,
                                    size: 30,
                                  )),
                                  Text("Load Wallet",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.green,
                                    size: 30,
                                  )),
                                  Text("Send Money",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Icon(Icons.account_balance_sharp,
                                          color: Colors.green, size: 30)),
                                  Text("Bank Transfer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 12.0),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Icon(Icons.account_box,
                                          color: Colors.green, size: 30)),
                                  Text("Remittance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 12.0),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: Container(
                        color: Colors.black54,
                        child: Column(
                          children: [
                            GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: flag ? 8: icons.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Icon(articles[index].icon,
                                              color: Colors.green, size: 30)),
                                      Text(articles[index].text,
                                          style: homeStyle, maxLines: 1),
                                    ],
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  flag = !flag;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Color.fromRGBO(33, 57, 27, 1),
                                        borderRadius: BorderRadius.circular(9.0),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),

                                      child:  flag
                                          ? Row(
                                            children: [
                                              Text(
                                        "View more",
                                        style: TextStyle(color: Colors.green,fontSize: 15.0),
                                              ),
                                              Icon(Icons.keyboard_arrow_down_outlined,color: Colors.green),
                                            ],
                                          )
                                          : Row(
                                            children: [
                                              Text("View less",
                                              style: TextStyle(color: Colors.green,fontSize: 15.0)),
                                              Icon(Icons.keyboard_arrow_up_outlined,color: Colors.green),
                                            ],
                                          ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: Container(
                        color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Popular Services',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: images.length,
                                    itemBuilder: (context, index) {
                                      var image = images[index];
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 80,
                                          child: Column(
                                            children: [
                                              Container(
                                                height:100,
                                                // width: MediaQuery.of(context).size.width,
                                                // margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: image['image'],
                                                 ) ,
                                                  border: Border.all(
                                                    color: Colors.grey[700],
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                ),

                                                // child: image['image'],
                                              ),
                                              Expanded(
                                                child: Text(image['label'],
                                                    style: homeStyle,
                                                    maxLines: 2),
                                              ),
                                              // Text(numbers[index].toString(),maxLines: 2,style:homeStyle,),
                                              // Text(maps[index]['one'].toString(),maxLines: 2,style:homeStyle,)
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: Container(
                        color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'New Services',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: images.length,
                                    itemBuilder: (context, index) {
                                      var image = images[index];
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 80,
                                          child: Column(
                                            children: [
                                              Container(
                                                height:100,
                                                // width: MediaQuery.of(context).size.width,
                                                // margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: image['image'],
                                                  ) ,
                                                  border: Border.all(
                                                    color: Colors.grey[700],
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(
                                                          10.0)),
                                                ),

                                                // child: image['image'],
                                              ),
                                              Expanded(
                                                child: Text(image['label'],
                                                    style: homeStyle,
                                                    maxLines: 2),
                                              ),
                                              // Text(numbers[index].toString(),maxLines: 2,style:homeStyle,),
                                              // Text(maps[index]['one'].toString(),maxLines: 2,style:homeStyle,)
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ))
          : Center(child: CircularProgressIndicator()),
    );
  }
}
