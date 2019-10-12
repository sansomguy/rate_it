import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_it/player/controls/control_button.dart';

class MusicControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Text("0:03"),
              ),
              Flexible(
                  flex: 7,
                  child: Slider(
                    value: 2,
                    max: 100,
                    min: 0,
                    onChanged: (value) {},
                  )
              ),
              Flexible(
                flex: 1,
                child: Text("8:12")
              )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ControlButton(child: Icon(Icons.thumb_down)),
            ControlButton(child: Icon(Icons.skip_previous)),
            ControlButton(child: Icon(Icons.play_arrow, size: 60)),
            ControlButton(child: Icon(Icons.skip_next)),
            ControlButton(child: Icon(Icons.thumb_up)),
          ],
        )
      ],
    );
  }

}