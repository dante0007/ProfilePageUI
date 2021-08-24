import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      fit: StackFit.passthrough,
      children: <Widget>[
        buildheader(),
        Positioned(top: 90, left: 8, right: 8, child: buildBody()),
        Positioned(top: 550, left: 10.0, right: 10.0, child: buildFooter())
      ],
    ));
  }

  

  Widget buildheader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/headerbg.png'), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconButton(imageUrl: 'assets/him.png', onTap: () {}),
          buildIconButton(
            imageUrl: 'assets/people.png',
            onTap: () {},
          ),
          buildIconButton(
            imageUrl: 'assets/chat.png',
            onTap: () {},
          ),
          buildIconButton(imageUrl: 'assets/user.png', onTap: () {})
        ],
      ),
    );
  }

  Widget buildBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      height: 440,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5.0,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/profile-pic.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "John Doe,  32",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  buildIconButton(imageUrl: 'assets/gear.png', onTap: () {})
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.passthrough,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: buildIconText(
                      iconSize: 50,
                      OnTap: () {},
                      imageUrl: 'assets/setting.png',
                      label: 'SETTINGS'),
                ),
                Positioned(
                  top: 20,
                  left: 50,
                  right: 50,
                  child: buildIconText(
                      iconSize: 80,
                      OnTap: () {},
                      imageUrl: 'assets/mcam.png',
                      label: 'ADD MEDIA'),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: buildIconText(
                      iconSize: 50,
                      OnTap: () {},
                      imageUrl: 'assets/pencil.png',
                      label: 'EDIT INFO'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildFooter() {
    return Container(
      height: 300,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildhorizontalIconText(
              OnTap: () {},
              iconSize: 0.0,
              imageUrl: 'assets/key.png',
              label: 'Control Your profile'),
          const Text(
            'Limit what others see with Him',
            style: TextStyle(color: Colors.grey, fontSize: 20.0),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.center,
              child: MaterialButton(
                textColor: Colors.white,
                color: Colors.black,
                elevation: 5.0,
                height: 55.0,
                minWidth: MediaQuery.of(context).size.width / 1.6,
                onPressed: () {},
                child: const Text(
                  'MY HIM',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildhorizontalIconText(
      {Function? OnTap, String? imageUrl, String? label, double? iconSize}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: OnTap!(), icon: Image.asset(imageUrl!)),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          label!,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  Widget buildIconText(
      {Function? OnTap, String? imageUrl, String? label, double? iconSize}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
      child: Column(
        children: [
          IconButton(
            iconSize: iconSize!,
            onPressed: () {},
            icon: Image.asset(imageUrl!),
          ),
          Text(label!)
        ],
      ),
    );
  }

  buildIconButton({Function? onTap, String? imageUrl}) {
    return IconButton(
      onPressed: onTap!(),
      icon: Image.asset(imageUrl!),
      iconSize: 5,
    );
  }
}
