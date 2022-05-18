import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class Header extends PreferredSize {
  Header({Key? key})
      : super(
            key: key,
            preferredSize: const Size.fromHeight(150),
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  children: [
                    Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 35, top: 60),
                          child: IconButton(
                            icon: const Icon(Icons.menu),
                            color: "EBF2FA".toColor(),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/image/logo.png',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                        Text('LinkPark',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: "EBF2FA".toColor(),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ));
}
