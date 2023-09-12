import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/services/service_locator.dart';
import '../components/now_playing_component.dart';
import '../components/popular_component.dart';
import '../components/top_rated_component.dart';
import '../controlles/movies_bloc.dart';
import '../controlles/movies_events.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => sl<MovieBloc>()
          ..add(GetNowPlayingEvent())
          ..add(GetPopularEvent())
          ..add(GetTopRatedEvent()),
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SingleChildScrollView(
            key: const Key('movieScrollView'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nowPlayingComponent(),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: GoogleFonts.poppins(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.15,
                            color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          /// TODO : NAVIGATION TO POPULAR SCREEN
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('See More',
                                  style: TextStyle(color: Colors.white)),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                popularComponent(),
                Container(
                  margin: const EdgeInsets.fromLTRB(
                    16.0,
                    24.0,
                    16.0,
                    8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Rated",
                        style: GoogleFonts.poppins(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.15,
                            color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          /// TODO : NAVIGATION TO Top Rated Movies Screen
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'See More',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                topRatedComponent(),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ));
  }
}
