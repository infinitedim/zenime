import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/size_config.dart';

class ModalSearchWidget extends StatefulWidget {
  const ModalSearchWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ModalSearchWidget> createState() => _ModalSearchWidgetState();
}

class _ModalSearchWidgetState extends State<ModalSearchWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight - 150,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: GoogleFonts.reggaeOne(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              IconButton(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
                  Get.back();
                },
                icon: const FaIcon(FontAwesomeIcons.circleXmark),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: widget.title,
                    hintStyle: GoogleFonts.reggaeOne(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        width: 1,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  style: GoogleFonts.reggaeOne(),
                  onChanged: (value) {},
                  onTapOutside: (event) {
                    Helpers.hideKeyboard(context);
                  },
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.primary,
                  ),
                  iconColor: WidgetStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.surface,
                  ),
                  iconSize: const WidgetStatePropertyAll<double?>(18),
                  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.all(5),
                  ),
                ),
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
              ),
            ],
          )
        ],
      ),
    );
  }
}
