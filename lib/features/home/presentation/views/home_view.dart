import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          AssetsData.smallLogo,
        ),
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchRouteKey);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              )),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
