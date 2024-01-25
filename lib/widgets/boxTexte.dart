import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.labelText,
    required this.icons,
    required this.controller,
    required this.type,
  });
  final String labelText;
  final Icon icons;
  final TextEditingController controller;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          controller: controller,
          textInputAction: TextInputAction.next,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter something";
            }
            return null;
          },
          keyboardType: type,
          cursorColor: const Color.fromARGB(255, 255, 17, 0),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(96, 255, 255, 255),
            labelText: labelText,

            prefixIcon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: icons,
            ),

            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 44, 44, 44),
            ),
            //errorText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 17, 0),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class MyBioField extends StatelessWidget {
  const MyBioField({
    super.key,
    required this.labelText,
    required this.icons,
    required this.controller,
  });
  final String labelText;
  final Icon icons;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          controller: controller,
          maxLines: 3,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter something";
            }
            return null;
          },
          cursorColor: const Color.fromARGB(255, 255, 17, 0),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(96, 255, 255, 255),
            labelText: labelText,

            prefixIcon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: icons,
            ),

            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 44, 44, 44),
            ),
            //errorText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 17, 0),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class MyPasswordTextField extends StatelessWidget {
  final String labelTextp;
  final Icon iconsp;
  final TextEditingController controllerp;

  const MyPasswordTextField({
    super.key,
    required this.labelTextp,
    required this.iconsp,
    required this.controllerp,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          controller: controllerp,
          cursorColor: const Color.fromARGB(255, 255, 17, 0),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(96, 255, 255, 255),
            labelText: labelTextp,

            prefixIcon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: iconsp,
            ),
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 44, 44, 44),
            ),
            //errorText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 17, 0),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            suffixIcon: const Icon(
              Icons.view_array,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}



class DateBox extends StatelessWidget {
  const DateBox({
    super.key,
    required this.labelText,
    required this.icons,
    required this.controller,
    required this.onTap,
  });
  final String labelText;
  final Icon icons;
  final TextEditingController controller;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          onTap: onTap,
          readOnly: true,
          controller: controller,
          cursorColor: const Color.fromARGB(255, 255, 17, 0),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(96, 255, 255, 255),
            labelText: labelText,

            prefixIcon: Padding(
              padding: const EdgeInsets.all(0.0),
              child: icons,
            ),

            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 44, 44, 44),
            ),
            //errorText: 'Email',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),

            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 17, 0),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/**                TextField(
                  controller: dateController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.red,
                    ),
                    labelText: 'Select Date',
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
          
                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate);
          
                      setState(() {
                        dateController.text = formattedDate;
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ), */