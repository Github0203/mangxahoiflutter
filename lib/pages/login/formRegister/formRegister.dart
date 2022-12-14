import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/login/formLogin/intl_phone_field.dart';

// import '../../countrys/csc_picker.dart';
import '../../../components/checkpass/src/validated_field.dart';
import '../../../components/widgets/ButtonComponentMauXanhDam.dart';
import '../../../components/widgets/InputTextWidget.dart';
import 'package:mangxahoi/components/chonnuoc/country_state_city_pro.dart';

class formRegister extends StatefulWidget {
  const formRegister({super.key});

  @override
  State<formRegister> createState() => _formRegisterState();
}

class _formRegisterState extends State<formRegister> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _hoTextEditingController =
      TextEditingController();
  final TextEditingController _tenTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _dienthoaiTextEditingController =
      TextEditingController();
  final TextEditingController _quocgiaTextEditingController =
      TextEditingController();
  final TextEditingController _thanhphoTextEditingController =
      TextEditingController();
  final TextEditingController _gioitinhTextEditingController =
      TextEditingController();
  final TextEditingController _matkhauTextEditingController =
      TextEditingController();
  bool _visiblePassword = false;
  String? _ho = "";
  String? _ten = "";
  String? _email = "";
  String? _dienthoai = "";
  String? _quocgia = "";
  String? _thanhpho = "";
  String? _gioitinh = "";
  String? _matkhau = "";
  String? _rematkhau = "";
  String? _error = "Please provide a valid email/password combination";

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  // simple check
  bool _validPassword = false;

  // form key

  @override
  Widget build(BuildContext context) {
    TextEditingController country = TextEditingController();
    TextEditingController state = TextEditingController();
    TextEditingController city = TextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text(
                'T???O T??I KHO???N M???I',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('B???n ???? c?? t??i kho???n',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 65, 59, 59))),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('????ng nh???p',
                          style: TextStyle(fontSize: 16))),
                ],
              ),

              /////////// H???
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: InputTextWidgetComponent(
                  cursorColor: Colors.white,
                  labelText: 'H???',
                  hintText: 'H???',
                  readOnly: false,
                  textEditingController: _hoTextEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    setState(() {
                      _ho = _ho!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'B???t bu???c';
                    }
                    return null;
                  },
                ),
              ),
              /////////// t??n
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: InputTextWidgetComponent(
                  cursorColor: Colors.white,
                  labelText: 'T??n',
                  hintText: 'T??n',
                  readOnly: false,
                  textEditingController: _tenTextEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    setState(() {
                      _ten = _ten!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'B???t bu???c';
                    }
                    return null;
                  },
                ),
              ),
              /////////// email
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: InputTextWidgetComponent(
                  cursorColor: Colors.white,
                  labelText: 'Email',
                  hintText: 'Email',
                  readOnly: false,
                  textEditingController: _emailTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    setState(() {
                      _email = _email!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'B???t bu???c';
                    } else if (RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value) ==
                        false) {
                      return "Email ch??a h???p l???";
                    }
                    return null;
                  },
                ),
              ),
              /////////// ??i???n tho???i
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: IntlPhoneField(),
              ),
              ///// ch???n n?????c
              ///
              CountryStateCityPicker(
                country: country,
                state: state,
                city: city,
                textFieldInputBorder: const UnderlineInputBorder(),
              ),
              const SizedBox(height: 20),

              /////// nh???p pass
              // _validPassword
              //     // ignore: prefer_const_constructors
              //     ? Text(
              //         // "Password Valid!",
              //         '',
              //         style: const TextStyle(fontSize: 22.0),
              //       )
              //     : Container(),

              ////// M???t kh???u
              PasswordValidatedFields(), //

              ////// gi???i t??nh
              // const Padding(
              //   padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
              //   child: SexGioitinh(),
              // ),

              //////// N??t ????ng k??
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ButtonComponentMauXanhDam(
                  child: const Text('????ng k??'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _validPassword = true;
                      });
                    } else {
                      setState(() {
                        _validPassword = false;
                      });
                    }
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(content: Text('???? ????ng k?? th??nh c??ng')),
                      // );
                      Navigator.pushNamed(context, '/registersussess');
                    }
                  },
                ),
              ),
              //// n??t h???y
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 92, 93, 99),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('H???y b???'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
