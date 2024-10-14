import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// The home page of the application which hosts the datagrid.
class LeadDataTableCopy extends StatefulWidget {
  /// Creates the home page.
  const LeadDataTableCopy({super.key});

  @override
  State<LeadDataTableCopy> createState() => _LeadDataTableCopy();
}

const int rowsPerPage = 9;
List<Lead> _employees = [];

List<Lead> _paginatedEmployees = [];
const double dataPagerHeight = 60.0;
late int totalRows;
late int currentPage;
late int startIndex;
late int endIndex;
late List<Lead> employees = [];

class _LeadDataTableCopy extends State<LeadDataTableCopy> {
  final EmployeeInfoDataSource _employeeInfoDataSource =
      EmployeeInfoDataSource();

  @override
  void initState() {
    super.initState();
    _employees = getEmployeeData();
    employees = getEmployeeData();
    totalRows = _employees.length;
    currentPage = 1;
    _paginatedEmployees = _employees.getRange(0, 10).toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 500, child: _buildDataGrid()),
        verticalSpaceLarge,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 20, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Showing page ${currentPage} of ${calculateTotalPages(totalRows, rowsPerPage)} of $totalRows',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                  width: 500,
                  height: dataPagerHeight,
                  child: SfDataPagerTheme(
                    data: SfDataPagerThemeData(
                        itemColor: Colors.white,
                        selectedItemColor: primaryColor,
                        itemBorderRadius: BorderRadius.circular(50),
                        backgroundColor: Colors.transparent,
                        itemBorderWidth: 0.5,
                        itemBorderColor: Colors.grey),
                    child: SfDataPager(
                      firstPageItemVisible: false,
                      lastPageItemVisible: false,
                      delegate: _employeeInfoDataSource,
                      pageCount: _employees.length / rowsPerPage,
                      direction: Axis.horizontal,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDataGrid() {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
          headerColor: const Color.fromARGB(255, 255, 255, 255),
          headerHoverColor: Colors.white),
      child: SfDataGrid(
          source: _employeeInfoDataSource,
          columnWidthMode: ColumnWidthMode.fill,
          gridLinesVisibility: GridLinesVisibility.none,
          headerGridLinesVisibility: GridLinesVisibility.none,
          onCellTap: ((details) {
            if (details.rowColumnIndex.rowIndex != 0) {
              int selectedRowIndex = details.rowColumnIndex.rowIndex - 1;
              var row = _employeeInfoDataSource.effectiveRows
                  .elementAt(selectedRowIndex);

              var data = employees[selectedRowIndex];

              context.go(
                '/dashboard/leads/details',
              );
            }
          }),
          columns: <GridColumn>[
            // GridColumn(
            //     columnName: 'id',
            //     label: Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //         alignment: Alignment.center,
            //         child: const Text(
            //           '#',
            //           overflow: TextOverflow.ellipsis,
            //         ))),
            GridColumn(
                columnName: 'name',
                width: 300,
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Customer Name',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black // Set the desired font weight
                            )))),
            GridColumn(
                columnName: 'product',
                width: 300,
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Product',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black // Set the desired font weight
                            )))),
            GridColumn(
                columnName: 'email',
                width: 300,
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Email',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black // Set the desired font weight
                            )))),
            GridColumn(
                columnName: 'status',
                width: 300,
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Status',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black // Set the desired font weight
                            )))),
            GridColumn(
                columnName: 'actions',
                width: 300,
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Actions',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black // Set the desired font weight
                            )))),
          ]),
    );
  }

  List<Lead> getEmployeeData() {
    // Lead(this.id, this.name, this.product, this.email, this.status, this.actions);

    return [
      Lead('LX-20210121-41760202', 'James John Lead', 'Critical Illness',
          'email', 'Contacted', 'actions'),
      Lead('LZ-20210121-41760202', 'Kimani  Lead', 'Balance Fund', 'email',
          'Not interested', 'actions'),
      Lead('LQ-20280121-41760202', 'Wilfred  Lead', 'Imerika Investment',
          'email', 'Not contactable', 'actions'),
      Lead('LE-20210121-41760202', 'James project Lead', 'Hopicash', 'email',
          'Closed converted', 'actions'),
      Lead('LQ-20210121-41760202', 'James project Lead', 'Tegemeo Term',
          'email', 'Contacted', 'actions'),
      Lead('LG-20210121-41760202', 'James project Lead', 'Akiba', 'email',
          'status', 'actions'),
      Lead('LM-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Not interested', 'actions'),
      Lead('LO-20210121-41760202', 'James project Lead', 'Income Drawdown',
          'email', 'Closed converted', 'actions'),
      Lead('LI-20210121-41760202', 'James project Lead', 'Balance Fund',
          'email', 'Contacted', 'actions'),
      Lead('LL-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Closed converted', 'actions'),
      Lead('LP-20210121-41760202', 'James project Lead', 'Akiba', 'email',
          'Contacted', 'actions'),
      Lead('L7-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Not contactable', 'actions'),
      Lead('LE-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Contacted', 'actions'),
      Lead('LJ-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Not interested', 'actions'),
      Lead('LD-20210121-41760202', 'James project Lead', 'Akiba', 'email',
          'Contacted', 'actions'),
      Lead('LE-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Not contactable', 'actions'),
      Lead('LT-20210121-41760202', 'James project Lead', 'Akiba', 'email',
          'Contacted', 'actions'),
      Lead('LD-20210121-41760202', 'James project Lead', 'Golf Insurance',
          'email', 'Not interested', 'actions'),
    ];
  }

  int calculateTotalPages(int totalRows, int rowsPerPage) {
    return (totalRows / rowsPerPage).ceil();
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Lead {
  /// Creates the employee class with required details.
  Lead(this.id, this.name, this.product, this.email, this.status, this.actions);

  /// Id of an employee.
  final String id;

  /// Name of an employee.
  final String name;
  final String product;
  final String email;
  final String status;
  final String actions;

  @override
  String toString() {
    return '{id: $id, name: $name, product:$product, email:$email, status:$status}';
  }
}

class EmployeeInfoDataSource extends DataGridSource {
  EmployeeInfoDataSource() {
    startIndex = 0;
    endIndex = rowsPerPage - 1;
    buildPaginatedDataGridRows();
  }

  List<DataGridRow> dataGridRows = [];

  Color getRowBackgroundColor(int index) {
    return index % 2 == 0 ? Colors.grey.withOpacity(0.2) : Colors.white;
  }

  // @override
  // List<DataGridRow> get rows => dataGridRows;

  // int get rowCount => _employees.length;

  @override
  List<DataGridRow> get rows {
    if (endIndex >= _employees.length) {
      endIndex = _employees.length - 1;
    }
    return dataGridRows.getRange(startIndex, endIndex + 1).toList();
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    Color getBackgroundColor() {
      int index = effectiveRows.indexOf(row);
      if (index % 2 == 0) {
        return colorDataTable;
      } else {
        return Colors.white;
      }
    }

    return DataGridRowAdapter(
        color: getBackgroundColor(),
        cells: row.getCells().map<Widget>((dataGridCell) {
          // if (dataGridCell.columnName == 'id') {
          //   return Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //     alignment: Alignment.center,
          //     child: SelectableText(dataGridCell.value.toString()),
          //     // child: Text(
          //     //   dataGridCell.value.toString(),
          //     // ),
          //   );
          // } else
          if (dataGridCell.columnName == 'name') {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: SelectableText(dataGridCell.value.toString()),
            );
          } else if (dataGridCell.columnName == 'product') {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: SelectableText(dataGridCell.value.toString()),
            );
          } else if (dataGridCell.columnName == 'email') {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: SelectableText(dataGridCell.value.toString()),
            );
          } else if (dataGridCell.columnName == 'status') {
            if (dataGridCell.value == 'Contacted') {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: SvgPicture.asset(
                        'assets/svgs/dot.svg',
                        height: 10,
                        width: 10,
                        colorFilter: const ColorFilter.mode(
                            primaryColor, BlendMode.srcIn),
                      ),
                    ),
                    Text(
                      dataGridCell.value.toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            } else if (dataGridCell.value == 'Not interested') {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: SvgPicture.asset(
                        'assets/svgs/dot.svg',
                        height: 10,
                        width: 10,
                        colorFilter: const ColorFilter.mode(
                            secondaryColor, BlendMode.srcIn),
                      ),
                    ),
                    Text(
                      dataGridCell.value,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            } else if (dataGridCell.value == 'Closed converted') {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: SvgPicture.asset(
                        'assets/svgs/dot.svg',
                        height: 10,
                        width: 10,
                        colorFilter: const ColorFilter.mode(
                            Colors.teal, BlendMode.srcIn),
                      ),
                    ),
                    Text(
                      dataGridCell.value,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: SvgPicture.asset(
                        'assets/svgs/dot.svg',
                        height: 10,
                        width: 10,
                        colorFilter: const ColorFilter.mode(
                            Colors.blue, BlendMode.srcIn),
                      ),
                    ),
                    Text(
                      dataGridCell.value,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            }
          } else if (dataGridCell.columnName == 'actions') {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: greyColor,
                ),
                onPressed: () {},
              ),
            );
          } else {
            return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Text(
                  NumberFormat.currency(locale: 'en_US', symbol: '\$')
                      .format(dataGridCell.value)
                      .toString(),
                  overflow: TextOverflow.ellipsis,
                ));
          }
        }).toList());
  }

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    int startIndex = newPageIndex * rowsPerPage;
    int endIndex = startIndex + rowsPerPage;
    if (startIndex < _employees.length && endIndex <= _employees.length) {
      _paginatedEmployees =
          _employees.getRange(startIndex, endIndex).toList(growable: false);
      buildPaginatedDataGridRows();
      notifyListeners();
    } else {
      _paginatedEmployees = [];
    }

    return true;
  }

  void buildPaginatedDataGridRows() {
    dataGridRows = _paginatedEmployees.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        // DataGridCell(columnName: 'id', value: dataGridRow.id),
        DataGridCell(columnName: 'name', value: dataGridRow.name),
        DataGridCell(columnName: 'product', value: dataGridRow.product),
        DataGridCell(columnName: 'email', value: dataGridRow.email),
        DataGridCell(columnName: 'status', value: dataGridRow.status),
        DataGridCell(columnName: 'actions', value: dataGridRow.actions),
      ]);
    }).toList(growable: false);
  }
}
