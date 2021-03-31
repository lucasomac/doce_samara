import 'package:flutter/material.dart';

const _backgroundColor = Color(0XF6F5F2);

class SamaraStoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          _AppBarSamara(),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    height: size.height - kToolbarHeight,
                    child: Container(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarSamara extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: _backgroundColor,
      child: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
          Expanded(
            child: Text(
              'Fruits and Vegetables',
              style: TextStyle(color: Colors.black),
            ),
          ),
          IconButton(icon: Icon(Icons.settings), onPressed: () => null)
        ],
      ),
    );
  }
}
