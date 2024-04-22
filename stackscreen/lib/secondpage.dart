import 'package:flutter/material.dart';

class MyStackScreen extends StatelessWidget {
  const MyStackScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: hsize * 0.12,
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: hsize,
            width: wsize,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: wsize,
                  height: hsize * 0.42,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: const Center(
                    child: Text(
                      'Location 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Location 2',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: hsize * 0.42 - 50,
            left: 20,
            child: SizedBox(
              width: wsize * 0.85,
              height: hsize * 0.25,
              child: SecondBox(wsize, hsize, 150),
            ),
          ),
          Positioned(
            top: hsize * 0.42 - 50 + 230,
            left: 20,
            child: SizedBox(
              width: wsize * 0.85,
              height: hsize * 0.25,
              child: SecondBox(wsize, hsize, 200),
            ),
          ),
        ],
      ),
    );
  }

  Widget SecondBox(double wsize, double hsize, double price) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 1,
                  )
                ]),
            width: wsize * 0.85,
            height: hsize * 0.25 - 15,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: wsize * 0.46,
                      height: 35,
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          'Location 1',
                          style:
                              TextStyle(fontSize: 13, color: Colors.deepPurple),
                        ),
                        subtitle: Text('Date'),
                      ),
                    ),
                    SizedBox(
                      width: wsize * 0.46,
                      height: 35,
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          'Location 2',
                          style:
                              TextStyle(fontSize: 13, color: Colors.deepPurple),
                        ),
                        subtitle: Text('Date'),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Price: ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$ ${price.toString()}",
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            "BUY TICKET",
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 20,
          child: CircleAvatar(
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.train,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
