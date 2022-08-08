import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/screens/widgets/space_coments.dart';
import 'package:supercharged/supercharged.dart';

class HeaderComents extends PreferredSize {
  HeaderComents({Key? key})
      : super(
            key: key,
            preferredSize: const Size.fromHeight(260),
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Row(
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
                          width: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/image/logo.png',
                              fit: BoxFit.contain,
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
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: SpaceComents(),
                    ),
                  ],
                ),
              ),
            ));
}
