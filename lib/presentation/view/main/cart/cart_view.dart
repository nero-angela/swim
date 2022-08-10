import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/view/main/cart/cart_view_model.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/layout/base_scaffold.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<CartViewModel>(
      model: CartViewModel(
        themeService: context.read(),
      ),
      builder: (context, model, _) {
        return BaseScaffold(
          appBar: AppBar(
            title: Text(S.current.cart),
          ),
        );
      },
    );
  }
}
