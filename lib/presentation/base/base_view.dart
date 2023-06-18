import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/config/locator_config.dart';
import 'package:provider/provider.dart';

import 'base_view_model.dart';

mixin VMState<T extends BaseViewModel, X extends StatefulWidget> on State<X> {
  final T viewModel = locator<T>();
  bool isReady = false;

  void onVMReady(T viewModel, BuildContext context);

  void onVMDispose(T viewModel);

  @override
  void dispose() {
    onVMDispose(viewModel);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<T>.value(
        value: viewModel,
        child: createWidget(context, viewModel),
      );

  Widget createWidget(BuildContext context, T viewModel);

  Widget consumer(
          {required Widget Function(
                  BuildContext context, T value, Widget? child)
              builder,
          Widget? child}) =>
      Consumer<T>(
        builder: builder,
        child: child,
      );
}
