import 'package:flutter/material.dart';

class userinformation {
  int id;
  int phone;
  String name;
  userinformation({
    required this.id,
    required this.phone,
    required this.name,
  });
}

class modelClass extends StatelessWidget {
  modelClass({super.key});
  List<userinformation> userInfo = [
    userinformation(
      id: 48,
      phone: 0455454,
      name: 'hfdhjd',
    ),
    userinformation(phone: 1232131, name: 'elpop', id: 3),
    userinformation(phone: 11111111111, name: 'Aboodaaaaaaa', id: 1),
    userinformation(
      id: 1,
      name: 'Abdullah Mansour',
      phone: 201115342559,
    ),
    userinformation(
      id: 2,
      name: 'Osama Mansour',
      phone: 201117842559,
    ),
    userinformation(
      id: 48,
      phone: 0455454,
      name: 'hfdhjd',
    ),
    userinformation(phone: 1232131, name: 'elpop', id: 3),
    userinformation(phone: 11111111111, name: 'Aboodaaaaaaa', id: 1),
    userinformation(
      id: 1,
      name: 'Abdullah Mansour',
      phone: 201115342559,
    ),
    userinformation(
      id: 2,
      name: 'Osama Mansour',
      phone: 201117842559,
    ),
    userinformation(
      id: 48,
      phone: 0455454,
      name: 'hfdhjd',
    ),
    userinformation(phone: 1232131, name: 'elpop', id: 3),
    userinformation(phone: 11111111111, name: 'Aboodaaaaaaa', id: 1),
    userinformation(
      id: 1,
      name: 'Abdullah Mansour',
      phone: 201115342559,
    ),
    userinformation(
      id: 2,
      name: 'Osama Mansour',
      phone: 201117842559,
    ),
    userinformation(
      id: 3,
      name: 'Ahmed Ali',
      phone: 2087856136,
    ),
    userinformation(id: 4, phone: 045545, name: 'name')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(userInfo[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 30),
                child: Container(
                  height: 2,
                  color: Colors.grey,
                ),
              ),
          itemCount: userInfo.length),
    );
  }

  Widget buildUserItem(userinformation user) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            child: Text('${user.id}'),
          ),
          title: Text(user.name),
          subtitle: Text('${user.phone}'),
        ),
      );
}
