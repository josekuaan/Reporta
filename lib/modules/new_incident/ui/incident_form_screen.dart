import 'package:flutter/material.dart';
import 'package:reporta/utility/constants.dart';
import 'package:reporta/widgets/app_button.dart';
import 'package:reporta/widgets/app_custom_bar.dart';
import 'package:reporta/widgets/attachment.dart';
import 'package:reporta/widgets/form_widget.dart';

class IncidentFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppCustomBar("Incident Form", const Icon(Icons.more_vert)),
              Container(
                color: Colors.blue.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Text(),
                    FormWidget(
                      tittle: "Incident ID",
                      multiLines: false,
                      name: "",
                    ),

                    FormWidget(
                      tittle: "Injured Enployee Name",
                      multiLines: false,
                      name: "",
                    ),

                    FormWidget(
                      tittle: "Severity",
                      multiLines: false,
                      name: "",
                    ),

                    FormWidget(
                      tittle: "Suppervisors Name",
                      multiLines: false,
                      name: "",
                    ),

                    FormWidget(
                      tittle: "Date and Time of Injury",
                      multiLines: false,
                      name: "",
                    ),
                    FormWidget(
                      tittle: "Location",
                      multiLines: false,
                      name: "Enter Location",
                    ),

                    FormWidget(
                      tittle: "Incident ID",
                      multiLines: true,
                      name: "",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Attachments"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Attachments(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    AppButton(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
