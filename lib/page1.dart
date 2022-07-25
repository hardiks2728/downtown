import 'package:carousel_slider/carousel_slider.dart';
import 'package:downtown/sample34.dart';
import 'package:flutter/material.dart';
import 'package:scroll_indicator/scroll_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Place',
      style: optionStyle,
    ),
    Text(
      'Index 2: Events',
      style: optionStyle,
    ),
    Text(
      'Index 3: Services',
      style: optionStyle,
    ),
    Text(
      'Index 4: Menu',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  List<Object> _photos = [
    "images/1.jpeg",
    "images/2.jpeg",
    "images/3.jpeg",
    "images/4.jpeg",
    "images/5.jpeg",
    "images/6.jpeg",
    "images/7.jpeg",
    "images/8.jpeg",
    "images/9.png",
    "images/10.jpeg",
  ];
  List<Places> _place = [
    Places(image: "images/1.jpeg", title: "Taj Mahal", subtitle: "Agra"),
    Places(
        image: "images/2.jpeg", title: "Golden Temple", subtitle: "Amritsar"),
    Places(
        image: "images/3.jpeg", title: "Meenakshi Temple", subtitle: "Madurai"),
    Places(image: "images/4.jpeg", title: "Mysore Palace", subtitle: "Mysore"),
    Places(
        image: "images/5.jpeg", title: "Gateway of India", subtitle: "Mumbai"),
    Places(image: "images/6.jpeg", title: "Red Fort", subtitle: "New Delhi"),
    Places(image: "images/7.jpeg", title: "Hawa Mahal", subtitle: "Jaipur"),
    Places(image: "images/8.jpeg", title: "Qutub Minar", subtitle: "New Delhi"),
    Places(image: "images/9.jpeg", title: "Sanchi Stupa", subtitle: "Sanchi"),
    Places(image: "images/10.jpeg", title: "Charminar", subtitle: "Hyderabad"),
  ];
  List<Events> _event = [
    Events(image: "images/13.jpeg", title: "Music Fest", subtitle: "Surat"),
    Events(
        image: "images/14.jpeg", title: "Dance Party", subtitle: "Iscon Mall"),
    Events(
        image: "images/15.jpeg",
        title: "Get To Gether",
        subtitle: "Silver Business Point"),
    Events(
        image: "images/16.jpeg",
        title: "Sport Day",
        subtitle: "LalBhai Stadium"),
    Events(
        image: "images/17.jpeg",
        title: "Navratri festival",
        subtitle: "Swarnbhumi Ground"),
  ];

  @override
  List<Object> get photos => _photos;

  List<Places> get place => _place;

  List<Events> get event => _event;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  double cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("DownTown"),
        leading: Image.asset("images/18.png"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_none_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.red, Colors.orangeAccent]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                heightFactor: 1,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'The Best Way to ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w900),
                    children: [
                      TextSpan(
                          text: '\nDiscover Your City',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text:
                              ' \n its Your town! know it inside out.\n place to visit,Things to do,Businesses,Services,\nStories that entertain,People worth knowing\n and much much more...',
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[600])),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: SizedBox(
                height: 250,
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: _photos.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage(_photos[index].toString()),
                                  fit: BoxFit.fill),
                            ),
                          )
                          //Image.asset(photos[index].toString()),
                          );
                    }),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Stack(
                  children: [
                    Image(image: AssetImage("images/11.jpeg")),
                    Positioned(
                      top: 190,
                      left: 130,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Book Now",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.yellowAccent)),
                    ),
                    Positioned(
                      left: 75,
                      top: 100,
                      child: RichText(
                        text: TextSpan(
                            text: "\t\t\t\t\t\t\t\t GEMS OF HIMALAYAS\n",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                            children: [
                              TextSpan(
                                  text: "Exploring india's first alpine trails")
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Icon(Icons.place_outlined, size: 50),
            SizedBox(
              height: 2,
            ),
            Text(
              "Place to Visit",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: place.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 250,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(_place[index].image),
                                      fit: BoxFit.fill),
                                )),
                          ),
                          ListTile(
                            title: Text(place[index].title),
                            subtitle: Text(place[index].subtitle),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //for progress indicator
            ScrollIndicator(
              scrollController: scrollController,
              width: 50,
              height: 5,
              indicatorWidth: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              indicatorDecoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {},
                child: Text("View All Places")),
            SizedBox(
              height: 25,
            ),
            //for Events
            Column(
              children: [
                Stack(
                  children: [Image(image: AssetImage("images/12.jpeg"))],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Icon(Icons.event, size: 50),
            SizedBox(
              height: 2,
            ),
            Text(
              "Place to attend",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //     height: 250,
            //     child: Expanded(flex: 1,
            //       child: ListView.builder(
            //         physics: BouncingScrollPhysics(),
            //         scrollDirection: Axis.horizontal,
            //         itemCount: _event.length,
            //         itemBuilder: (context, index) {
            //           return Container(
            //             height: 250,
            //             child: Card(
            //               elevation: 5,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(25)),
            //               child: Wrap(
            //                 alignment: WrapAlignment.center,
            //                 children: [
            //                   Padding(
            //                     padding: const EdgeInsets.all(10.0),
            //                     child: Container(
            //                         height: 150,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(25),
            //                           image: DecorationImage(
            //                               image: AssetImage(_event[index].image),
            //                               fit: BoxFit.fill),
            //                         )),
            //                   ),
            //                   ListTile(
            //                     title: Text(event[index].title),
            //                     subtitle: Text(event[index].subtitle),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           );
            //         },
            //       ),
            //     )),
            Text("hi")
            // For Event
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.teal,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place_outlined),
            label: 'Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
