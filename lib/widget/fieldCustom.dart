import 'package:flutter/material.dart';

Padding textFieldCustom(ttl, ctrl) {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ttl,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(height: 0),
          Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
                controller: ctrl,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'input tidak boleh kosong';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ))),
          ),
        ],
      ));
}
