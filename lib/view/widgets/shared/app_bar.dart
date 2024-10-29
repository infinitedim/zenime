import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZenimeAppBar extends StatefulWidget {
  const ZenimeAppBar({
    super.key,
    required this.title,
    this.isExplore = false,
    this.tabController,
  });

  final String title;
  final bool isExplore;
  final TabController? tabController;

  @override
  State<ZenimeAppBar> createState() => _ZenimeAppBarState();
}

class _ZenimeAppBarState extends State<ZenimeAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        'Zenime',
        style: GoogleFonts.reggaeOne(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      bottom: widget.isExplore
          ? TabBar(
              controller: widget.tabController,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Anime',
                    style: GoogleFonts.reggaeOne(),
                  ),
                ),
                Tab(
                  child: Text(
                    'Manga',
                    style: GoogleFonts.reggaeOne(),
                  ),
                ),
              ],
            )
          : null,
      automaticallyImplyLeading: false,
    );
  }
}
