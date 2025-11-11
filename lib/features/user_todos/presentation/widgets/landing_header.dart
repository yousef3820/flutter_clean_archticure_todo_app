import 'package:flutter/material.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({
    super.key,
    required this.length,
    required this.userid,
    required this.noOfCompleted,
  });
  final String length;
  final String userid;
  final String noOfCompleted;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "User id :",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  userid,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 181, 86, 79),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Total Todos =",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  length,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 181, 86, 79),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "No of completed Tasks =",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  noOfCompleted,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 19, 134, 22),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
