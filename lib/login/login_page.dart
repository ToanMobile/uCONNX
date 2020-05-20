import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/generated/l10n.dart';
import 'package:shared/shared.dart';
import 'package:uCONNX/login/widget/login_bg_widget.dart';
import '../router_manger.dart';
import 'widget/login_field_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phoneController = TextEditingController();
  final codeController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
   /* _nameController.text = 'huynhvantoan.itc@gmail.com';
    _passwordController.text = '123456';*/
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsUtils.pale,
      body: Stack(
        children: <Widget>[
          BackgroundLogin(bgBackgroud: ImagesUtils.bgLogin),
          /*ViewModelBuilder<LoginModel>.reactive(
            viewModelBuilder: () => LoginModel(),
            disposeViewModel: false,
            onModelReady: (model) => {},
            builder: (context, model, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(left: 40.w, top: 250.h, right: 40.w),
                child: Form(
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    buildTextTitleLogin(),
                    SizedBox(
                      height: 30.h,
                    ),
                    SingUpWidget(phoneController),
                    SizedBox(
                      height: 80.h,
                    ),
                    buildTextUserName(),
                    SizedBox(
                      height: 30.h,
                    ),
                    LoginTextField(
                      label: S.of(context).login_otp,
                      icon: Icons.phone,
                      controller: phoneController,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (text) {},
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    buildTextPassword(),
                    SizedBox(
                      height: 10.h,
                    ),
                    LoginTextField(
                      controller: codeController,
                      label: S.of(context).verify_code,
                      icon: Icons.vpn_key,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (text) {},
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    buildLogin(model)
                  ]),
                ),
              );
            },
          ),*/
        ],
      ),
    );
  }

  Widget buildTextTitleLogin() => Text(S.of(context).signIn, style: TextStylesUtils.styleRegular20TextSelect);

  Widget buildTextUserName() => Text(S.of(context).login_username, style: TextStylesUtils.styleRegular12BrownGreyW400);

  Widget buildTextPassword() => Text(S.of(context).login_password, style: TextStylesUtils.styleRegular12BrownGreyW400);

  Widget buildLogin() {
    Widget child = true //model.busy
        ? Container(
            height: 60,
            child: Center(
              child: ButtonProgressIndicator(),
            ),
          )
        : Container(
            height: 60,
            child: Center(
              child: Text(
                S.of(context).signIn,
                style: TextStylesUtils.style14W400Black,
              ),
            ),
          );
    return FilledRoundButton.withGradient(
      radius: 10,
      gradientColor: ColorsUtils.gradient_WaterMelon_Melon,
      child: child,
      cb: () {
       /* model.sendOtp(phoneController.text).then((value) {
          if (value) {
            //No login
          } else {
            model.showErrorMessage(context);
          }
        });
        model.checkCode(codeController.text).then((value) {
          if (value) {
            Navigator.pushReplacementNamed(context, RouteName.home);
          } else {
            model.showErrorMessage(context);
          }
        });*/
      },
    );
  }
}
