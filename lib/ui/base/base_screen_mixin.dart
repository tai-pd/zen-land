import 'package:flutter/material.dart';
import 'package:zen_land/ui/base/base_page_screen_state.dart';
import 'index.dart';

mixin BaseScreenMixin<T extends BaseController> on BasePageScreenState<T> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return builder()!;
  }

  @override
  Widget? builder() {
    print('builder');
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.shade700, Colors.white70])),
          ),
          title: Center(
            child: Text(
              appBarTitle(),
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          leading: backButton
              ? IconButton(
                  onPressed: () => onBackButton(),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                  ))
              : const SizedBox(),
          actions: <Widget>[
            optionButton
                ? IconButton(
                    onPressed: () => onOptionButton(),
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.black54,
                    ))
                : const SizedBox(),
          ],
        ),
        body: Container(
          child: body(),
          color: Colors.white70,
        ));
  }

  Widget body();
}
