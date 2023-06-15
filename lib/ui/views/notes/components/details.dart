import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../notesview_model.dart';

class Details extends StackedHookView<NotesViewModel> {
  const Details({super.key});
  @override
  Widget builder(BuildContext context, NotesViewModel model) {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            const QuiltedGridTile(2, 2),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 2)
          ]),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return null;
      }),
    );
  }
}
