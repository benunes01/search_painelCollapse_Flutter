import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final bool isVoltar;
  final String titulo;
  final Function isVoltarOnPress;
  final BuildContext context;

  Header({
    @required this.isVoltar,
    @required this.titulo,
    @required this.context,
    this.isVoltarOnPress,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context, width: 414, height: 896, allowFontScaling: false);

    return AppBar(
      automaticallyImplyLeading: this.isVoltar,
      leading: !this.isVoltar
          ? null
          : IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: this.isVoltarOnPress,
            ),
      backgroundColor: Colors.white,
      brightness: Brightness.dark,
      elevation: 1.0,
      titleSpacing: this.isVoltar ? 0 : ScreenUtil().setWidth(27),
      title: Text(
        this.titulo,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: TextStyle(
          fontSize: ScreenUtil().setSp(22, allowFontScalingSelf: true),
          fontFamily: 'Open-sans-regular',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          color: Colors.black,
        ),
        textAlign: TextAlign.start,
      ),

    );
  }
}
