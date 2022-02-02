

import 'package:order_your_fav_foods/imports/imports.dart';

class Order_Fav_Foods3 extends StatefulWidget {
  @override
  _Order_Fav_Foods3State createState() => _Order_Fav_Foods3State();
}

class _Order_Fav_Foods3State extends State<Order_Fav_Foods3> {
  String _buttontheme = "Hello";
  String _buttontheme2 = "Hello";
  double _sliderCount1 = 5;
  var _sliderCount4 = RangeValues(0, 160);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.clear_outlined,
            size: 28.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Filter",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              setState(
                () {
                  _sliderCount1 = 5;
                  _sliderCount4 = RangeValues(0, 160);
                  _buttontheme = "Hello";
                  _buttontheme2 = "Hello";
                },
              );
            },
            child: Text(
              "Reset all",
              style: TextStyle(
                color: Colors.red[300],
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Distance",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${_sliderCount1.toStringAsFixed(1)}mi",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[400],
                  ),
                ),
              ],
            ),
          ),
          Slider(
            min: 5,
            max: 15,
            divisions: 100,
            activeColor: Colors.green[600],
            inactiveColor: Colors.grey[200],
            thumbColor: Colors.green,
            label: "${_sliderCount1.toStringAsFixed(1)}",
            value: _sliderCount1,
            onChanged: (v) {
              setState(() {
                _sliderCount1 = v;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "5 mi",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "15 mi",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.euro_symbol_outlined,
                        color: Colors.green[400],
                      ),
                      Text(
                        "${_sliderCount4.start.toStringAsFixed(1)}" +
                            " -" +
                            "${_sliderCount4.end.toStringAsFixed(1)}",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          RangeSlider(
            min: 0.0,
            max: 160.0,
            divisions: 100,
            activeColor: Colors.green[600],
            inactiveColor: Colors.grey[200],
            labels: RangeLabels(_sliderCount4.start.toStringAsFixed(1),
                _sliderCount4.end.toStringAsFixed(1)),
            values: _sliderCount4,
            onChanged: (v) {
              setState(() {
                this._sliderCount4 = v;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.euro_symbol_outlined,
                        color: Colors.grey[600],
                      ),
                      Text(
                        "00",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.euro_symbol_outlined,
                            color: Colors.grey[600],
                          ),
                          Text(
                            "160",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 30.0,
            ),
            child: Text(
              "Cuisine",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 50.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: _buttontheme == "English"
                          ? Colors.green[600]
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _buttontheme == ""
                            ? _buttontheme = ""
                            : _buttontheme = "English";
                      });
                    },
                    child: Text(
                      "English",
                      style: TextStyle(
                        color: _buttontheme == "English"
                            ? Colors.white
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: _buttontheme == "Chiness"
                          ? Colors.green[600]
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _buttontheme == ""
                            ? _buttontheme = ""
                            : _buttontheme = "Chiness";
                      });
                    },
                    child: Text(
                      "Chiness",
                      style: TextStyle(
                        color: _buttontheme == "Chiness"
                            ? Colors.white
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: _buttontheme == "Indian"
                          ? Colors.green[600]
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _buttontheme == ""
                            ? _buttontheme = ""
                            : _buttontheme = "Indian";
                      });
                    },
                    child: Text(
                      "Indian",
                      style: TextStyle(
                        color: _buttontheme == "Indian"
                            ? Colors.white
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: _buttontheme == "Thai"
                          ? Colors.green[600]
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _buttontheme == ""
                            ? _buttontheme = ""
                            : _buttontheme = "Thai";
                      });
                    },
                    child: Text(
                      "Thai",
                      style: TextStyle(
                        color: _buttontheme == "Thai"
                            ? Colors.white
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 30.0,
            ),
            child: Text(
              "Diet",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _buttontheme2 == "Paleo"
                              ? Colors.green[600]
                              : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _buttontheme2 == ""
                                ? _buttontheme2 = ""
                                : _buttontheme2 = "Paleo";
                          });
                        },
                        child: Text(
                          "Paleo",
                          style: TextStyle(
                            color: _buttontheme2 == "Paleo"
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _buttontheme2 == "Ketogenic"
                              ? Colors.green[600]
                              : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _buttontheme2 == ""
                                ? _buttontheme2 = ""
                                : _buttontheme2 = "Ketogenic";
                          });
                        },
                        child: Text(
                          "Ketogenic",
                          style: TextStyle(
                            color: _buttontheme2 == "Ketogenic"
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _buttontheme2 == "Jollof Rich"
                              ? Colors.green[600]
                              : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _buttontheme2 == ""
                                ? _buttontheme2 = ""
                                : _buttontheme2 = "Jollof Rich";
                          });
                        },
                        child: Text(
                          "Jollof Rich",
                          style: TextStyle(
                            color: _buttontheme2 == "Jollof Rich"
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _buttontheme2 == "Banku"
                              ? Colors.green[600]
                              : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _buttontheme2 == ""
                                ? _buttontheme2 = ""
                                : _buttontheme2 = "Banku";
                          });
                        },
                        child: Text(
                          "Banku",
                          style: TextStyle(
                            color: _buttontheme2 == "Banku"
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _buttontheme2 == "Tuna Sandwich"
                              ? Colors.green[600]
                              : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _buttontheme2 == ""
                                ? _buttontheme2 = ""
                                : _buttontheme2 = "Tuna Sandwich";
                          });
                        },
                        child: Text(
                          "Tuna Sandwich",
                          style: TextStyle(
                            color: _buttontheme2 == "Tuna Sandwich"
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 30.0,
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amber[900],
                fixedSize: Size(
                  400.0,
                  60.0,
                ),
              ),
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.SUCCES,
                  animType: AnimType.BOTTOMSLIDE,
                  title: "Congratulations",
                  desc: "You have successfully filtered",
                  btnCancelOnPress: () {
                    Navigator.pop(context);
                  },
                  btnOkOnPress: () {
                    Navigator.pop(context);
                  },
                )..show();
              },
              child: Text(
                "Apply Filter",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
