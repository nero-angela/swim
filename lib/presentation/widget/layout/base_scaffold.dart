import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    bool? isSafeArea,
  })  : isSafeArea = isSafeArea ?? true,
        super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool isSafeArea;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// 키보드 숨기기
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: appBar,
        body: isSafeArea
            ? SafeArea(
                child: body ?? const SizedBox(),
              )
            : body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
