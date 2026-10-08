import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TunnelApp(),
  ));
}

class TunnelApp extends StatefulWidget {
  @override
  State<TunnelApp> createState() => _TunnelAppState();
}

class _TunnelAppState extends State<TunnelApp> {
  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1A2E),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              "Basem Ahmed",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              isConnected ? "CONNECTED" : "DISCONNECTED",
              style: TextStyle(
                color: isConnected ? Colors.green : Colors.red,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "00:00:00",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E2A44),
                ),
                child: const Text(
                  "Server - VIP V2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E2A44),
                ),
                child: const Text(
                  "Etisalat - اتصالات منصات",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 130,
              height: 130,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isConnected = !isConnected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: const CircleBorder(),
                ),
                child: Text(
                  isConnected ? "قطع" : "اتصال",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,


                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
 

 }
}