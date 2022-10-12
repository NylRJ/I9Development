import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  final double top;
  final double left;
  final String title;
  final String subTitle;
  final double factor;
  final IconData icons;

  const ProfileTile({
    Key? key,
    required this.top,
    required this.left,
    required this.title,
    required this.subTitle,
    required this.factor,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(
        milliseconds: 500,
      ),
      top: top,
      left: left,
      child: Container(
        padding: EdgeInsets.all(8 * factor),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 5 * factor),
              blurRadius: 5 * factor,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18 * factor,
              backgroundColor: Colors.grey[800],
              child: Icon(
                icons,
                size: 12 * factor,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunito(
                      fontSize: 12 * factor, color: Colors.black87),
                ),
                Text(
                  subTitle,
                  style: GoogleFonts.nunito(
                      fontSize: 12 * factor, color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
