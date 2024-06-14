import 'package:assignment_sheba_xyz/controller/utils/media_size.dart';
import 'package:flutter/material.dart';

import '../controller/app_theme/app_color.dart';
import '../controller/app_theme/text_style.dart';
import 'widgets/common_widgets/common_page_body.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: commonPageBody(
        child: SizedBox(
          height: mediaHeight,
          width: mediaWidth,
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(height: fixedRatio(20)),
                Text(
                  'Find Movies, TV Series and more...',
                  style: TStyle.roboto(
                    fontSize: 27,
                  ),
                ),
                SizedBox(height: fixedRatio(20)),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    prefixIconColor: AppColor.textFFFFFF,
                    hintText: 'Sherlock Holmes',
                  ),
                ),
                SizedBox(height: fixedRatio(20)),
                SizedBox(
                  width: mediaWidth,
                  child: const TabBar(
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(
                        text: 'Movies',
                      ),
                      Tab(
                        text: 'Tv Series',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: fixedRatio(10)),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: 100,
                        // physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            'Find Movies, TV Series and more...',
                            style: TStyle.roboto(
                              fontSize: 10,
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 100,
                        // physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            'Find Movies, TV Series and more...',
                            style: TStyle.roboto(
                              fontSize: 10,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: fixedRatio(10)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
