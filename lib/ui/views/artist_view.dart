import 'package:flutter/material.dart';
import 'package:music_player/constant/app_assest.dart';
import 'package:music_player/ui/shared/app_colors.dart';
import 'package:music_player/ui/shared/shared_styles.dart';
import 'package:music_player/ui/shared/ui_helpers.dart';

class ArtistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAsset.artistImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: AppColors.primaryColor.withOpacity(0.8),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 19,
                    height: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (screenWidth(context) / 2) - 60,
                  ),
                  Text(
                    "Artist",
                    style: textStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              height: screenHeight(context) / 2,
              width: screenWidth(context) - 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Katy Perry",
                    style: textStyle.copyWith(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  verticalSpace(7),
                  Text(
                    "Monthly Listener 25,326,335",
                    style: textStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  verticalSpace(20),
                  Expanded(
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Material(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                              elevation: 1,
                              child: Container(
                                height: 45,
                                width: 150,
                                child: Center(
                                  child: Text(
                                    "+  Follow",
                                    style: textStyle.copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            horizontalSpaceMedium,
                            Material(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              elevation: 1,
                              child: Container(
                                height: 35,
                                width: 35,
                                // child: Center(child: Icon(Icons.,),
                              ),
                            )
                          ],
                        ),
                        verticalSpace(10),
                        TrackWidget(),
                        TrackWidget(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TrackWidget extends StatelessWidget {
  const TrackWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAsset.artistImage),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                horizontalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dark House",
                      style: textStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Katy perry ft. Wizkid",
                      style: textStyle.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w100),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            "8:20",
            style:
                textStyle.copyWith(fontSize: 11, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
