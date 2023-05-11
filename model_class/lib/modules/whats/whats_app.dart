import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/BEBO.jpg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Abdelmenam',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'abdelmenamadel96@gmail.com',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: const Text(
          'WhatsApp Chat',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(width: 10),
          const Icon(Icons.search),
          const SizedBox(width: 10),
          const Icon(Icons.message),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Mohammed Hosny',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.mic),
                SizedBox(
                  width: 2,
                ),
                Text('0:07'),
              ],
            ),
            trailing: const Text(
              '11:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
              ),
              title: const Text(
                'Abdelkreem Essam',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.check_sharp),
                  SizedBox(
                    width: 2,
                  ),
                  Text('انت فين يا عم العرص ....'),
                ],
              ),
              trailing: Column(
                children: [
                  const Text(
                    '11:45 AM',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.greenAccent[400],
                    child: const Text(
                      '3',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
          ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
              ),
              title: const Text(
                'My GirlFriend 💖',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 2,
                  ),
                  Text('واحشني صوتك مش هنتقابل ولا ايه'),
                ],
              ),
              trailing: Column(
                children: [
                  const Text(
                    '12:35 AM',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.greenAccent[400],
                    child: const Text(
                      '2',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Mohammed Hosny',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.mic),
                SizedBox(
                  width: 2,
                ),
                Text('0:07'),
              ],
            ),
            trailing: const Text(
              '11:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
              ),
              title: const Text(
                'Abdallah',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.check_sharp),
                  SizedBox(
                    width: 2,
                  ),
                  Text('انزل يابشمهندس مستنينك '),
                ],
              ),
              trailing: Column(
                children: [
                  const Text(
                    '04:45 PM',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.greenAccent[400],
                    child: const Text(
                      '1',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Sara',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 2,
                ),
                Text('عبدو ازيك عامل ايه'),
              ],
            ),
            trailing: const Text(
              '11:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Mohammed Hosny',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.mic),
                SizedBox(
                  width: 2,
                ),
                Text('0:07'),
              ],
            ),
            trailing: const Text(
              '11:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
              ),
              title: const Text(
                'Eslam',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.check_sharp),
                  SizedBox(
                    width: 2,
                  ),
                  Text('المدير قالب عليك الشركه...'),
                ],
              ),
              trailing: Column(
                children: [
                  const Text(
                    '09:45 AM',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.greenAccent[400],
                    child: const Text(
                      '3',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Nourhan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 2,
                ),
                Text('عاش يسطا والله المره الجايه بست تيم إن شاء الله'),
              ],
            ),
            trailing: const Text(
              '02:45 PM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Mohammed Samy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.mic),
                SizedBox(
                  width: 2,
                ),
                Text('0:09'),
              ],
            ),
            trailing: const Text(
              '02:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
              ),
              title: const Text(
                'The Boss',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.check_sharp),
                  SizedBox(
                    width: 2,
                  ),
                  Text('دقيقه كمان تأخير وهيتخصملك نص يوم..'),
                ],
              ),
              trailing: Column(
                children: [
                  const Text(
                    '09:50 AM',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.greenAccent[400],
                    child: const Text(
                      '3',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Lamis',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 2,
                ),
                Text('ايه يا زمكس الكليه عامله ايه'),
              ],
            ),
            trailing: const Text(
              '11:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange,
            ),
            title: const Text(
              'Mohammed Hosny',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.mic),
                SizedBox(
                  width: 2,
                ),
                Text('0:07'),
              ],
            ),
            trailing: const Text(
              '11:45 AM',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
