import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef ConsumerBuilder<T> = Widget Function(
  BuildContext context,
  T model,
  Widget? child,
);

class BaseConsumer<T extends ChangeNotifier> extends StatelessWidget {
  const BaseConsumer({
    Key? key,
    required this.model,
    required this.builder,
  }) : super(key: key);
  final T model;
  final ConsumerBuilder<T> builder;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(
        builder: builder,
      ),
    );
  }
}
