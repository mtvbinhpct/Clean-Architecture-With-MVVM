import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/base/base_view.dart';
import 'package:flutter_clean_architecture/presentation/login/login_viewmodel.dart';
import 'package:flutter_clean_architecture/presentation/resources/assets_manager.dart';
import 'package:flutter_clean_architecture/presentation/resources/color_manager.dart';
import 'package:flutter_clean_architecture/presentation/resources/strings_manager.dart';
import 'package:flutter_clean_architecture/presentation/resources/value_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with VMState<LoginViewModel, LoginView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget createWidget(BuildContext context, LoginViewModel viewModel) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: _getContentWidget(),
    );
  }

  @override
  void onVMDispose(LoginViewModel viewModel) {}

  @override
  void onVMReady(LoginViewModel viewModel, BuildContext context) {}

  Widget _getContentWidget() {
    return Container(
      padding: const EdgeInsets.only(top: AppPadding.p100),
      child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(ImageAssets.splashLogo)),
                  const SizedBox(
                    height: AppSize.s28,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: viewModel.usernameController,
                    decoration: const InputDecoration(),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
