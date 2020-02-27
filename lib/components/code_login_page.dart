

import 'package:flutter/material.dart';

class CodeLoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<CodeLoginPage> {
  bool _showProgress = false;

  void _forgetPwd() {
//    Application.router.navigateTo(context, Routes.forgetPwd);
    Navigator.of(context).pushNamed(ROUTE_FORGET_PWD_PAGE);
  }

  void _register() {
//    Application.router.navigateTo(context, Routes.register);
//    Navigator.of(context).pushNamed(ROUTE_RE);
  }

  void _loginResult(int code, Object msg) {
    if (code == 0) {
//      Application.router.navigateTo(context, Routes.register);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: MicroAppBar(title: Text("订单详情"), elevation: 0, actions: []),
      body: MicroCodeLogin(
        onForgetPwdPressed: _forgetPwd,
        onRegisterPressed: _register,
        onLoginResult: _loginResult,
      ),
    );
  }
}

/// 验证码登录组件
class MicroCodeLogin extends StatefulWidget {
  ///忘记密码按钮事件
  final VoidCallback onForgetPwdPressed;

  ///注册按钮事件
  final VoidCallback onRegisterPressed;

  ///登录结果返回
  final ResultCallback onLoginResult;

  const MicroCodeLogin(
      {Key key,
      this.onForgetPwdPressed,
      this.onRegisterPressed,
      this.onLoginResult})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MicroCodeLoginState();
  }
}

class _MicroCodeLoginState extends State<MicroCodeLogin> {
  //手机号的控制器
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController verifyCodeController = TextEditingController();

//  手机号
  String phone;

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  bool _autoValidate = false;

//  是否能获取验证码
  bool available = true;

  void _getVerifyCode(BuildContext context) {
    final controller = TextEditingController();
//    Dialogs.showVerifyCodeDialog(context, onOkPressed: () {
//      print("获取验证码");
//      print('input ${controller.text}');
//    }, controller: controller);

//    controller.addListener(() {
//      print('input ${controller.text}');
//    });
  }

  Future<bool> _isLogin() async {
    String token = await LocalStorage.get(Config.TOKEN_KEY);
    if (token == null || token.isEmpty) {
      showUserAgreementDialog();
      return false;
    } else {
      Navigator.pushNamed(context, ROUTE_HOME_PAGE);

      return true;
    }
  }

  static const AGREE_USER_AGREEMENT_KEY = "agree_user_agreement";

  ///用户协议
  Future<bool> showUserAgreementDialog() async {
    bool agreeUserAgreement = await LocalStorage.get(AGREE_USER_AGREEMENT_KEY);
    if (agreeUserAgreement != null && agreeUserAgreement) {
      return true;
    }

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text("用户隐私政策概要"),
        actions: <Widget>[
          MicroFlatButton(
            text: "不同意",
            onPressed: () {
              LocalStorage.save(AGREE_USER_AGREEMENT_KEY, false);

              Toasts.error(msg: "需要点击同意后才能继续使用new toys APP提供的服务");
//              Navigator.of(context).pop();
            },
          ),
          MicroFlatButton(
            text: "同意",
            onPressed: () {
              LocalStorage.save(AGREE_USER_AGREEMENT_KEY, true);
              Navigator.of(context).pop();
            },
          ),
        ],
//              applicationIcon: Icon(Icons.ac_unit),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              """本《隐私概要》将向你说明：
   1. 为了帮你你浏览、发布、评论交流、注册认证，我们会收集你的部分必要信息；
   2. 为了提供以上服务，我们可能会收集联络方式、相册等部分敏感信息，你有权拒绝或撤销授权；
   3. 未经你同意，我们不会从第三方获取、共享或提取你的信息；
   4. 你可以访问、更正、删除你的个人信息，我们也将提供注销、投诉的方式。如果你点击不同意，将可能导致无法继续使用new toys APP 相关服务。
   前往查看完成版的
              """,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.zero,
                  child: Text("《用户协议》"),
                  onPressed: UrlLauncherUtil.openUserAgreement,
                ),
                Text(
                  "与",
                ),
                FlatButton(
                  padding: EdgeInsets.zero,
                  child: Text("《隐私政策》"),
                  onPressed: UrlLauncherUtil.openUserPrivacy,
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return false;
  }

  void _login() async {
    bool agreeUserAgreement = await showUserAgreementDialog();
    if (!agreeUserAgreement) {
      return;
    }

    final form = _formKey.currentState;
    if (!form.validate()) {
      setState(() {
        _autoValidate = true;
      });

      return;
    }

    String phone = phoneController.text;
    String checkCode = verifyCodeController.text;

    Dialogs.showLoading(context);

    var userLoginInfo = await AuthRepository.codeLogin(phone, checkCode);

    if (userLoginInfo['code'] == 0) {
      await LocalStorage.save(Config.USER_NAME_KEY, phone);
      widget.onLoginResult?.call(0, '登录成功');
      Navigator.popAndPushNamed(context, ROUTE_HOME_PAGE);
//      Navigator.of(context).popUntil(ModalRoute.withName(ROUTE_HOME_PAGE));
//      Navigator.pushAndRemoveUntil(
//        context,
//        new MaterialPageRoute(builder: (context) => HomePage()),
//            (route) => route == null,
//      );
    } else {
      widget.onLoginResult?.call(-1, '登录失败');
    }

    setState(() {});
  }

  void _forgetPwd() {
    widget.onForgetPwdPressed?.call();
  }

  void _register() {
    widget.onRegisterPressed?.call();
  }

  @override
  void initState() {
    _isLogin();
    phoneController.addListener(() {
      setState(() {
        phone = phoneController.text;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Container(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Image(
                  width: 60,
                  height: 60,
                  image: AssetImage("assets/images/icon.png"),
                ),
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                maxLines: 1,
                autofocus: true,
                autovalidate: _autoValidate,
                validator: (String value) {
                  //删除首尾空格
                  if (value.isEmpty || value.trim().length < 11) {
                    return '手机号错误';
                  }
                  return null;
                },
                onSaved: (String value) {
//        text = value;
//        this._name = value;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(3),
                  labelText: "手机号",
                  hintText: "您的手机号",
//                  prefixIcon: Icon(Icons.person),
                ),
              ),
              MicroVerifyCodeField(
                available: available,
                onPressed: () {
                  _getVerifyCode(context);
                },
                controller: verifyCodeController,
                autovalidate: _autoValidate,
                phone: phone,
              ),
              Container(
//                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                constraints:
                    BoxConstraints(minWidth: double.infinity, minHeight: 46),
                child: MicroRaisedButton(
                  color: Colors.yellow.shade600,
                  text: "登录",
                  onPressed: _login,
                ),
              ),
//            Container(
//              margin: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
//              alignment: Alignment.bottomRight,
//              child: MicroFlatButton(
//                text: "忘记密码",
//                onPressed: _forgetPwd,
//              ),
//            ),
              Expanded(
                child: SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "注册代表你已同意",
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    child: Text("《用户协议》"),
                    onPressed: UrlLauncherUtil.openUserAgreement,
                  ),
                  Text(
                    "与",
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    child: Text("《隐私政策》"),
                    onPressed: UrlLauncherUtil.openUserPrivacy,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 获得验证码
class MicroVerifyCodeField extends StatefulWidget {
  final TextEditingController controller;

//  final TextEditingController phoneController;
  final VoidCallback onPressed;
  final bool autovalidate;

  /// 倒计时的秒数，默认60秒。
  final int countdown;

  /// 是否可以获取验证码，默认为`false`。
  final bool available;

  final String phone;
  final bool verifyPhoneRegister;

//  _MicroVerifyCodeFieldState __microVerifyCodeFieldState;

  MicroVerifyCodeField(
      {Key key,
      this.controller,
      this.onPressed,
      this.autovalidate = false,
      this.countdown = 60,
      this.available = false,
      this.phone,
      this.verifyPhoneRegister = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MicroVerifyCodeFieldState();
  }
//  @override
//  State<StatefulWidget> createState() {
//    __microVerifyCodeFieldState = _MicroVerifyCodeFieldState();
//    return __microVerifyCodeFieldState;
//  }
//
//  void startTimer() {
//    __microVerifyCodeFieldState.startTimer();
//  }
}

class _MicroVerifyCodeFieldState extends State<MicroVerifyCodeField> {
  /// 倒计时的计时器。
  Timer _timer;

  /// 当前倒计时的秒数。需要把这个时间保持，下次进来还是从这个时间开始倒计时
  int _seconds;

  /// 当前墨水瓶（`InkWell`）的文本。
  String _verifyStr = '获取验证码';

  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _seconds = widget.countdown;
  }

  void _getVerifyCode(BuildContext context) async {
//    isRegister

//      print("captcha:----${captcha}");
    Dialogs.showVerifyCodeDialog(
        context, widget.verifyPhoneRegister, widget.phone, onOkPressed: () {
      print("获取验证码");
      print('input ${controller.text}');
      startTimer();
    }, controller: controller);
  }

  /// 启动倒计时的计时器。
  ///
  void startTimer() {
    // 计时器（`Timer`）组件的定期（`periodic`）构造函数，创建一个新的重复计时器。
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        _cancelTimer();
        _seconds = widget.countdown;
//            inkWellStyle = _availableStyle;
        setState(() {});
        return;
      }
      _seconds = _seconds - 1;
      _verifyStr = '已发送$_seconds' + 's';
      setState(() {});
      if (_seconds == 0) {
        _verifyStr = '重新发送';
      }
    });
  }

  /// 取消倒计时的计时器。
  void _cancelTimer() {
    // 计时器（`Timer`）组件的取消（`cancel`）方法，取消计时器。
    _timer?.cancel();
  }

  @override
  void dispose() {
    _cancelTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.number,
          maxLength: 4,
          autovalidate: widget.autovalidate,
          controller: widget.controller,
          validator: (String value) {
            ///删除首尾空格
            if (value.isEmpty || value.trim().length < 4) {
              return '验证码必须4位';
            }
            return null;
          },
          onSaved: (String value) {
//        text = value;
//        this._name = value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(3),
            labelText: "短信验证码",
            hintText: "请输入验证码",
//            prefixIcon: Icon(Icons.verified_user),
          ),
        ),
        MicroFlatButton(
          text: "$_verifyStr",
          onPressed: widget.onPressed == null ||
                  !widget.available ||
                  _seconds != widget.countdown
              ? null
              : () {
                  widget.onPressed?.call();
                  _getVerifyCode(context);
                },
        ),
      ],
    );
  }
}
