import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:trck/widgets/buttons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "213",
    countryCode: "DZ",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Algeria",
    example: "Algeria",
    displayName: "Algeria",
    displayNameNoCountryCode: "DZ",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: phoneController.text.length,
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            ),
            onTap: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter your mobile number",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Add your phone number. We'll send you a verificati",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    "The phone number makes it easy to contact you",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: phoneController,
                    maxLength: 9,
                    keyboardType: TextInputType.phone,
                    cursorColor: const Color.fromARGB(255, 255, 17, 0),
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (value) {
                      setState(() {
                        phoneController.text = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: '0 00 00 00 00',
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      isDense: true,
                      filled: true,
                      fillColor: const Color.fromARGB(96, 255, 255, 255),
                      labelText: 'Phone Number',
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 82, 82, 82),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 17, 0),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      prefixIcon: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                countryListTheme: const CountryListThemeData(
                                  bottomSheetHeight: 550,
                                ),
                                onSelect: (value) {
                                  setState(() {
                                    selectedCountry = value;
                                  });
                                });
                          },
                          child: Text(
                            "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      suffixIcon: phoneController.text.length > 8
                          ? const Icon(
                              Icons.done_outline_rounded,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 25,
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        child: phoneController.text.length > 8
                            ? ButtonA(
                                title: 'Next',
                                onPressed: () {},
                              )
                            : const ButtonB(
                                title: 'Next',
                              )),
                  ],
                ),
              ),
              /*const Divider(
                height: 10,
                color: Colors.black,
                thickness: 5,
                indent: 20,
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
