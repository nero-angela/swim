import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/text_field/search_text_field/search_text_field_model.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    this.height,
    this.padding,
    this.controller,
  }) : super(key: key);

  final double? height;
  final EdgeInsets? padding;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return BaseConsumer<SearchTextFieldModel>(
      model: SearchTextFieldModel(
        themeService: context.read(),
        controller: controller,
      ),
      builder: (context, model, _) {
        return TextField(
          controller: model.controller,
          cursorColor: model.themeService.onPrimaryColor,
          onChanged: model.onChanged,
          decoration: InputDecoration(
              contentPadding: padding ?? const EdgeInsets.all(0),
              constraints: BoxConstraints(
                maxHeight: height ?? 40,
              ),
              filled: true,
              prefixIcon: Container(
                height: 18,
                padding: const EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 20,
                ),
                child: Image.asset(
                  'asset/icon/search.png',
                ),
              ),
              suffixIcon: IconButton(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 19,
                  bottom: 15,
                ),
                iconSize: 10,
                icon: Image.asset(
                  'asset/icon/close.png',
                  color: model.controller.text.isEmpty
                      ? Colors.transparent
                      : model.themeService.onPrimaryColor,
                ),
                color: model.themeService.onPrimaryColor,
                onPressed: model.clear,
              )),
        );
      },
    );
  }
}
