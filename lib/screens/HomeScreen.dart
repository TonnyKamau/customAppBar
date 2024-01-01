import 'package:bnb/shared/themes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 128,
        flexibleSpace: Stack(
          children: [
            Positioned(
              left: 16.0,
              right: 72.0,
              top: 64.0,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed('booking-details');
                },
                child: Hero(
                  tag: 'search',
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGrey, width: 3.0),
                        borderRadius: BorderRadius.circular(32.0),
                        boxShadow: [
                          BoxShadow(
                            color: appGrey.withOpacity(0.5),
                            blurRadius: 8.0,
                            spreadRadius: 8.0,
                            offset: const Offset(0.0, 4.0),
                          ),
                        ]),
                    child: Row(children: [
                      const Icon(Icons.search),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Where to?',
                            style: textTheme.bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Anywhere . Any week . Add guest ',
                            style: textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
