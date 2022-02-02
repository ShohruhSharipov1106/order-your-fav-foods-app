

import 'package:order_your_fav_foods/imports/imports.dart';

class Order_Fav_Foods1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 40.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.0,
                width: 400.0,
                child: Image.asset(
                  "assets/images/Order_Your_Fav_Foods/fantuan_food.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Order your\nFavourite\nFood",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Made by the finest Home Chefs, every\ndish raises the bar of Taste, Health,\nHygiene and cleanliness.",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueGrey[500],
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  CircleAvatar(
                    radius: 45.0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Order_Fav_Foods2(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                    backgroundColor: Colors.amber[900],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
