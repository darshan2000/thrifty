import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'matchBox.dart';

enum SlidableAction { select, delete }

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;
  final String image;
  final index;

  const SlidableWidget({
    @required this.child,
    @required this.image,
    @required this.onDismissed,
    @required this.index,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: SlidableDrawerActionPane(),
        child: child,

        /// left side
        actions: <Widget>[
          IconSlideAction(
              caption: '',
              color: Colors.white,
              icon: Icons.done,
              foregroundColor: Colors.green,
              onTap: () {
                onDismissed(SlidableAction.select);
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      MatchBox(context, image, index),
                );
              }),
          // IconSlideAction(
          //   caption: 'Share',
          //   color: Colors.indigo,
          //   icon: Icons.share,
          //   onTap: () => onDismissed(SlidableAction.share),
          // ),
        ],

        /// right side
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: '',
            color: Colors.white,
            foregroundColor: Colors.red,
            icon: Icons.close,
            onTap: () => onDismissed(SlidableAction.delete),
          ),
          // IconSlideAction(
          //   caption: 'Delete',
          //   color: Colors.red,
          //   icon: Icons.delete,
          //   onTap: () => onDismissed(SlidableAction.delete),
          // ),
        ],
      );
}
