import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes/resources/colors.dart';
import 'package:quotes/ui/core/elevated_container.dart';
import 'package:quotes/ui/core/translate_anim_widget.dart';

import '../../../utils/constants.dart';

import 'package:flutter/cupertino.dart';

class QuoteItem extends StatelessWidget {
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Slidable(
        key: ValueKey(index.toString()),
        endActionPane: ActionPane(
          extentRatio: 0.45,
          motion: const ScrollMotion(),
          dragDismissible: false,
          children: [
            CustomSlidableAction(
              padding: const EdgeInsets.only(left: 24, right: 4),
              backgroundColor: Colors.transparent,
              onPressed: (onPressed) {},
              child: ElevatedContainer(
                radius: 16,
                height: 52,
                blur: 12,
                spread: 14,
                width: 52,
                child: const Icon(
                  Icons.thumb_up_off_alt_outlined,
                  color: Colors.black54,
                ),
              ),
            ),
            CustomSlidableAction(
              padding: const EdgeInsets.only(left: 8, right: 20),
              backgroundColor: Colors.transparent,
              onPressed: (onPressed) {},
              child: ElevatedContainer(
                radius: 16,
                color: AppColors.red,
                blur: 12,
                spread: 14,
                height: 52,
                width: 52,
                child: const Icon(
                  Icons.thumb_down_off_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        child: TransitionAnimWidget(
          duration: 700 + index,
          child: ElevatedContainer(
            blur: 3,
            spread: 24,
            height: 232,
            child: ClipRRect(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.black26),
                          textAlign: TextAlign.center,
                          "- Oprah Winfrey -"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.all(24),
                      alignment: Alignment.center,
                      child: Text(
                          style: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.center,
                          "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough."),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 1000, bottom: 1300),
                    child: Icon(
                      Icons.circle_outlined,
                      size: 125,
                      color: Colors.indigo.withAlpha(6),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.only(left: 200, top: 80),
                      child: Icon(
                        Icons.favorite_border,
                        size: 200,
                        color: Colors.indigo.withAlpha(8),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 24, top: 80, bottom: 32),
                      child: Icon(
                        Icons.rectangle_outlined,
                        size: 62,
                        color: Colors.indigo.withAlpha(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  QuoteItem({
    required this.index,
  });
}