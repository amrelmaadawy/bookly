import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 20),
      child: Row(
        children: [
           Text(
            'Bookly',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
           Spacer(),
          // IconButton(
          //     onPressed: () {
          //       GoRouter.of(context).push(routs.kSearchView );
          //     },
          //     icon: const Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
