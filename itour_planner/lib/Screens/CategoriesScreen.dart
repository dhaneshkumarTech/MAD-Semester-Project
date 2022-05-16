import 'package:flutter/material.dart';

class categoriesScreen extends StatefulWidget {
  const categoriesScreen({Key? key}) : super(key: key);

  @override
  State<categoriesScreen> createState() => _categoriesScreenState();
}

class _categoriesScreenState extends State<categoriesScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          title: const Text('Categories'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: themeColor,
        ),

        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // tab bar for categories
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                height: 40,
                width: double.infinity,
                color: Color(0xffF5F5F5),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xffFBB7BE),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 0.8),
                  ),
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/BottomAppBarIcons/desert.png'),
                          const Text('Hill areas',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/BottomAppBarIcons/beaches.png'),
                          const Text('Beaches',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/BottomAppBarIcons/desert.png'),
                          const Text('Deserts',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              //each area list view
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 487,
                  width: double.infinity,
                  child: TabBarView(
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              height: 240,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    width: double.infinity,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset(
                                          'assets/images/skardu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          'assets/images/Khaplu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          'assets/images/skardu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  //container except imes
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Skardu",
                                          style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 100,
                                          color: Color.fromARGB(195, 234, 234, 234),
                                          child: const Text(
                                            "Gilgit-Baltistan",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    height: 20,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white),
                                          label: const Text('view on map',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    173, 37, 51, 1),
                                              )),
                                          icon: Image.asset(
                                              'assets/BottomAppBarIcons/sites.png'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.yellowAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: const Text("Explore",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 240,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    width: double.infinity,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset(
                                          'assets/images/Khaplu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          'assets/images/skardu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          'assets/images/Khaplu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  //container except imes
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Khaplu",
                                          style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 100,
                                          color: Color(0xffEAEAEA),
                                          child: const Text(
                                            "Gilgit-Baltistan",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    height: 20,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white),
                                          label: const Text('view on map',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    173, 37, 51, 1),
                                              )),
                                          icon: Image.asset(
                                              'assets/BottomAppBarIcons/sites.png'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.yellowAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: const Text("Explore",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 240,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    width: double.infinity,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Image.asset(
                                          'assets/images/Hunza.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          'assets/images/Khaplu.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          'assets/images/Hunza.png',
                                          width: 412,
                                          fit: BoxFit.fill,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  //container except imes
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Hunza",
                                          style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 100,
                                          color: Color(0xffEAEAEA),
                                          child: const Text(
                                            "Gilgit-Baltistan",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    height: 20,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white),
                                          label: const Text('view on map',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    173, 37, 51, 1),
                                              )),
                                          icon: Image.asset(
                                              'assets/BottomAppBarIcons/sites.png'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.yellowAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: const Text("Explore",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // beaches
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.red,
                      ),

                      //deserts
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        //Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: themeColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: themeColor,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage("assets/BottomAppBarIcons/plan.png"),
                color: themeColor,
              ),
              label: 'Plan',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage("assets/BottomAppBarIcons/booking.png"),
                color: themeColor,
              ),
              label: 'Booking',
            ),
          ],
          selectedItemColor: themeColor,
          onTap: null,
        ),
      ),
    );
  }
}
