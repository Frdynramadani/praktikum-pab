import 'package:flutter/material.dart';

Center list_song({required img, required desc}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 330,
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: NetworkImage(img), fit: BoxFit.cover)),
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Center(
                  child: Text(
                    desc,
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "poppins",
                        height: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(100, 10)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors
                              .blue; // Change button color when pressed to yellow
                        }
                        return Colors.white; // Default button color
                      },
                    ),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors
                              .black; // Change text color when pressed to black
                        }
                        return Colors.black; // Default text color
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ),
  );
}
