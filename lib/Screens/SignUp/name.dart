import 'package:flutter/material.dart';
import 'package:trck/widgets/buttons.dart';

class UesrName extends StatefulWidget {
  const UesrName({super.key});

  @override
  State<UesrName> createState() => _UesrNameState();
}

class _UesrNameState extends State<UesrName> {
  final TextEditingController phoneController = TextEditingController();
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
                    "Enter your name",
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
                  
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.name,
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
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      isDense: true,
                      filled: true,
                      fillColor: const Color.fromARGB(96, 255, 255, 255),
                      labelText: 'Name',
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
                      
                      suffixIcon: phoneController.text.length > 8
                          ? const Icon(
                              Icons.done,
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
                        child: phoneController.text.length >= 3
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
