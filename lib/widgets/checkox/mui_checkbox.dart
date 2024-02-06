import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';

class MUICheckboxWidget extends StatefulWidget {
  const MUICheckboxWidget({super.key});

  @override
  State<MUICheckboxWidget> createState() => _MUICheckboxWidgetState();
}

class _MUICheckboxWidgetState extends State<MUICheckboxWidget> {
  ValueNotifier<bool> checkedNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: checkedNotifier,
          builder: (context, checked, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MUICheckBox(
                checked: checkedNotifier.value,
                onChanged: (value) {
                  checkedNotifier.value = value;
                },
                child: const Text(
                  "Accept Terms and conditions",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
