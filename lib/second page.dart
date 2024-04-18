import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerStackApp extends StatefulWidget {
  const ContainerStackApp({super.key});

  @override
  State<ContainerStackApp> createState() => _ContainerStackAppState();
}

class Item {
  String name;
  String imageUrl;
  double amount;
  double rating;

  Item(
      {required this.name,
      required this.imageUrl,
      required this.amount,
      required this.rating});
}

class _ContainerStackAppState extends State<ContainerStackApp> {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
          name: 'CHICKEN',
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeDnRPHJuUuT8schyZqnaWMHwXqfHsu2kRcg&s',
          amount: 10.99,
          rating: 4.5),
      Item(
          name: 'VEG',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_50EJhc64igefeSLE6dgYKms3XPrOEsPOnw&s',
          amount: 15.99,
          rating: 3.8),
      Item(
          name: 'MOTTON',
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHxjGaZfBCr9L75NBV8jSiOf_8gxJcGuWEvg&s',
          amount: 20.99,
          rating: 4.2),
      Item(
          name: 'ROLL',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_50EJhc64igefeSLE6dgYKms3XPrOEsPOnw&s',
          amount: 25.99,
          rating: 4.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            Icon(Icons.share_rounded),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              height: 150,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 199, 231, 139)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.ac_unit_outlined),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Best in burger",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                child: Text("Westint burger",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17))),
                          ],
                        ),
                        Row(
                          children: [
                            Text("45-50 min.SN Park"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Burger ,Bevereges"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 223, 234, 128)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.ac_unit_rounded),
                            Column(
                              children: [
                                Text("20% off upto /125",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                Text("USE KOTAK811 ABOVE /499")
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(child: Text("---MENU---",style: TextStyle(fontWeight: FontWeight.w600))),
          Center(
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 95, 90, 90)),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.search,
                      color: const Color.fromARGB(255, 9, 9, 9),
                    ),
                    hintText: "search FOR DISHES",
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
            child: Text("TOP PICS"),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 180, 
                  height: 200,
                  decoration: BoxDecoration(
                    color:
                        Colors.grey[300], // Background color of the container
                    borderRadius:
                        BorderRadius.circular(10), // Optional: border radius
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHxjGaZfBCr9L75NBV8jSiOf_8gxJcGuWEvg&s',
                    fit: BoxFit
                        .cover, 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 180, // Width of the container
                  height: 200, // Height of the container
                  decoration: BoxDecoration(
                    color:
                        Colors.grey[300], // Background color of the container
                    borderRadius:
                        BorderRadius.circular(10), // Optional: border radius
                    // Optional: other decoration properties like boxShadow, border, etc.
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeDnRPHJuUuT8schyZqnaWMHwXqfHsu2kRcg&s', // URL of your image
                    fit: BoxFit
                        .cover, // How the image should be inscribed into the container
                  ),
                ),
              ),
            ],
          ),
          Text("Recommended",style: TextStyle(fontWeight: FontWeight.w600)),
          Column(
            children: items.map((item) {
              return ItemWidget(
                name: item.name,
                imageUrl: item.imageUrl,
                amount: item.amount,
                rating: item.rating,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double amount;
  final double rating;

  ItemWidget(
      {required this.name,
      required this.imageUrl,
      required this.amount,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Amount: \$${amount.toStringAsFixed(2)}'),
            Text('Rating: ${rating.toString()}'),
          ],
        ),
      ),
    );
  }
}
