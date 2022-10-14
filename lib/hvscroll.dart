import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);
  final ScrollController controller = ScrollController();
  final ScrollController controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HV scrolling"),
      ),
      body: Scrollbar(
        controller: controller2,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: controller2,
          scrollDirection: Axis.horizontal,
          child: Scrollbar(
            controller: controller,
            thumbVisibility: true,
            scrollbarOrientation: ScrollbarOrientation.left,
            child: SingleChildScrollView(
              controller: controller,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Test')),
                  DataColumn(label: Text('Test')),
                  DataColumn(label: Text('Test')),
                  DataColumn(label: Text('Test')),
                  DataColumn(label: Text('Test')),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                      DataCell(
                        Text('tesssssssssssssssssssssssssssssssssst'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
