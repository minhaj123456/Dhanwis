import 'package:dhaniwis/second%20page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "wales",
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 250,
              ),
              child: Icon(Icons.account_circle_sharp),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                      width: 2, color: const Color.fromARGB(255, 95, 90, 90)),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefix: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 246, 22, 22),
                    ),
                    hintText: "search For cakes",
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 270, // Width of the container
                height: 160, // Height of the container
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Background color of the container
                  borderRadius:
                      BorderRadius.circular(10), // Optional: border radius
                  // Optional: other decoration properties like boxShadow, border, etc.
                ),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAqIb5bdRnkZqz87hxRSXcbsn_wu5lT3q7w&s', // URL of your image
                  fit: BoxFit
                      .cover, // How the image should be inscribed into the container
                ),
              ),
            ),
          ),
                    const Text("OFFERS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: 150, // Width of the container
                    height: 100, // Height of the container
                    decoration: BoxDecoration(
                      color:
                          Colors.grey[300], // Background color of the container
                      borderRadius:
                          BorderRadius.circular(10), // Optional: border radius
                      // Optional: other decoration properties like boxShadow, border, etc.
                    ),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_50EJhc64igefeSLE6dgYKms3XPrOEsPOnw&s', // URL of your image
                      fit: BoxFit
                          .cover, // How the image should be inscribed into the container
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150, // Width of the container
                      height: 100, // Height of the container
                      decoration: BoxDecoration(
                        color:
                            Colors.grey[300], // Background color of the container
                        borderRadius:
                            BorderRadius.circular(10), 
                      ),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIRUNbPd_aWPh5pp7mmDloFGc3pZAIEfDnPA&s', // URL of your image
                        fit: BoxFit
                            .cover, 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text("TOP RATED NEAR YOU",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerWithImageAndName(
                  imagePath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHxjGaZfBCr9L75NBV8jSiOf_8gxJcGuWEvg&s',
                  name: 'Chiken Burger',
                  nextPage: ContainerStackApp(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerWithImageAndName(
                    imagePath:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeDnRPHJuUuT8schyZqnaWMHwXqfHsu2kRcg&s',
                    name: 'Veg Burger',
                    nextPage: ContainerStackApp(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerWithImageAndName(
                    imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_50EJhc64igefeSLE6dgYKms3XPrOEsPOnw&s',
                    name: 'Motton Burger',
                    nextPage: ContainerStackApp(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            height: 220,
            color: Colors.grey,
            child: const Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("BECOUSE YOU VIEWED WESTINED BURGERS",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("HERE ARE SOME FEATURED RESTORENT FOR YOU"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContainerWithImageAndName(
                            imagePath:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHxjGaZfBCr9L75NBV8jSiOf_8gxJcGuWEvg&s',
                            name: '',
                            nextPage: ContainerStackApp(),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ContainerWithImageAndName(
                              imagePath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeDnRPHJuUuT8schyZqnaWMHwXqfHsu2kRcg&s',
                              name: '',
                              nextPage: ContainerStackApp(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ContainerWithImageAndName(
                              imagePath: '',
                              name: '',
                              nextPage: ContainerStackApp(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContainerWithImageAndName extends StatelessWidget {
  final String imagePath;
  final String name;
  final Widget nextPage;

  const ContainerWithImageAndName({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.nextPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(name),
        ],
      ),
    );
  }
}
