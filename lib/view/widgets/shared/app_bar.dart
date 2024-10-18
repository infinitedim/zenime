import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/view/widgets/shared/modal_search_widget.dart';

class ZenimeAppBar extends StatelessWidget {
  const ZenimeAppBar({super.key, required this.title});

  final String title;

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
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => ModalSearchWidget(title: title),
            );
          },
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
