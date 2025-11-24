import 'package:flutter/material.dart';

import '../../widgets/buttons/submit_btn.dart';
import '../../widgets/textfields/my_textfield.dart';
import '../common/crm_scaffold.dart';

class AddClientPage extends StatefulWidget {
  const AddClientPage({super.key});

  @override
  State<AddClientPage> createState() => _AddClientPageState();
}

class _AddClientPageState extends State<AddClientPage> {
  final fNameCtrl = TextEditingController();
  final lNameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final addressCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CrmScaffold(
      title: 'Add Client',
      role: 'Admin',
      showRole: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              MyTextfield(label: "First Name", controller: fNameCtrl),
              MyTextfield(label: "Last Name", controller: lNameCtrl),
              MyTextfield(
                label: "Email",
                controller: emailCtrl,
                keyboardType: TextInputType.emailAddress,
              ),
              MyTextfield(
                label: "Phone Number",
                controller: phoneCtrl,
                keyboardType: TextInputType.phone,
              ),
              MyTextfield(label: "Address", controller: addressCtrl),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: SubmitBtn(onPressed: () {}, text: 'Add Client'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
