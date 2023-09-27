import 'package:flutter/material.dart';

class PoyeJuniorPage extends StatefulWidget {
  const PoyeJuniorPage({super.key});

  @override
  State<PoyeJuniorPage> createState() => _PoyeJuniorPageState();
}

class _PoyeJuniorPageState extends State<PoyeJuniorPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poye Junior'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/everywheregood.jpg'),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.orange,
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(5.0),
              color: Colors.black,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Book A Studio Section With Your Favorite Producer',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('ElevatedButton');
              },
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network('https://wallpaperaccess.com/full/1887672.jpg')
          ],
        ),
      ),
    );
  }
}
