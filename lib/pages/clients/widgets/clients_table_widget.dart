import 'package:admin_panel_tutorial/constants/data.dart';
import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/constants/theme.dart';
import 'package:admin_panel_tutorial/widgets/available_drivers_table/table_row_tools.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ClientsTableWidget extends StatelessWidget {
  const ClientsTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: containerBoxDecoration,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              CustomTextWidget(
                text: "Available Drivers",
                size: 20,
                color: lightGrey,
                fontWeight: FontWeight.bold
              )
            ],
          ),
          DataTable2(
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 600,
            columns: const [
              DataColumn2(label: Text('Name')),
              DataColumn(label: Text('Location')),
              DataColumn(label: Text('Rating')),
              DataColumn(label: Text('Action')),
            ],
            rows: List<DataRow>.generate(
              ClientDataModel.mockData.length, (index) {
                final DriverDataModel driver = ClientDataModel.mockData[index];
                return DataRow(
                  cells: [
                    DataCell(CustomTextWidget(text: driver.name)),
                    DataCell(CustomTextWidget(text: driver.location)),
                    DataCell(DisplayRatingWidget(rating: driver.rating,)),
                    const DataCell(TableRowButtonWidget(title: "Block Client",)),
                  ]
                );
              }
            )
          ),
        ],
      ),
    );
  }
}
