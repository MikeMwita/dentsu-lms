import 'package:dentsu_app/common/utils/colors.dart';
import 'package:dentsu_app/models/lead.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

const int rowsPerPage = 5;
const double _dataPagerHeight = 60.0;
List<Lead> paginatedEmployees = [];
List<Lead> _paginatedEmployees = [];

List<Lead> _employees = [];
late int totalRows;
late int currentPage;
late int startItem = 1;
late int endItem = 1;
int startIndex = 0;
late int endIndex;
List<Lead> employees = <Lead>[];

/// The home page of the application which hosts the datagrid.
class LeadDataTable extends StatefulWidget {
  /// Creates the home page.
  const LeadDataTable({super.key});

  @override
  State<LeadDataTable> createState() => _LeadDataTable();
}

class _LeadDataTable extends State<LeadDataTable> {
  final EmployeeInfoDataSource _employeeInfoDataSource =
      EmployeeInfoDataSource();

  @override
  void initState() {
    super.initState();
    _employees = getEmployeeData();
    employees = getEmployeeData();
    totalRows = _employees.length;
    currentPage = 1;
    updateItemRange();
  }

  void updateItemRange() {
    startItem = (currentPage - 1) * rowsPerPage + 1;
    endItem = startItem + rowsPerPage - 1;
    endItem = endItem > totalRows ? totalRows : endItem;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 0, 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Leads',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: textColor, // Set your desired color
                  thickness: 2.0, // Set thickness as needed
                ),
              ],
            ),
          ),
          SfDataGridTheme(
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

                  context.go('/leads_mobile/leads_details', extra: data);
                }
              }),
              columns: <GridColumn>[
                GridColumn(
                    width: 100,
                    columnName: 'id',
                    label: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: const Text(
                          '#',
                        ))),
                GridColumn(
                    columnName: 'name',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerLeft,
                        child: const Text('Customer Name'))),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(42, 32, 20, 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Showing $startItem to $endItem of $totalRows",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ),
          Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: SfDataPagerTheme(
                data: SfDataPagerThemeData(
                  // itemColor: Colors.white,
                  // selectedItemColor: primaryColor,
                  // itemBorderRadius: BorderRadius.circular(50),
                  // itemBorderColor: textColor,
                  itemBorderWidth: 0.5,

                  backgroundColor: Colors.white,
                ),
                child: SfDataPager(
                  lastPageItemVisible: false,
                  firstPageItemVisible: false,
                  onPageNavigationEnd: (int page) {
                    setState(() {
                      currentPage = page + 1;
                      updateItemRange();
                    });
                  },
                  delegate: _employeeInfoDataSource,
                  pageCount: (employees.length / rowsPerPage).ceilToDouble(),
                  direction: Axis.horizontal,
                ),
              ))
        ],
      ),
    );
  }

  List<Lead> getEmployeeData() {
    return [
      Lead('01', 'James project Lead'),
      Lead('02', 'Kathryn Manager'),
      Lead('03', 'Lara Developer'),
      Lead('04', 'Michael Designer'),
      Lead('05', 'Martin Developer'),
      Lead('06', 'Newberry Developer'),
      Lead('07', 'Balnc Developer'),
      Lead('08', 'Perry Developer'),
      Lead('09', 'Gable Developer'),
      Lead('10', 'Grimes Developer'),
      Lead('11', 'James project Lead'),
      Lead('12', 'Kathryn Manager'),
      Lead('13', 'Lara Developer'),
      Lead('14', 'Michael Designer'),
      Lead('15', 'Martin Developer'),
      Lead('16', 'Newberry Developer'),
      Lead('17', 'Balnc Developer'),
      Lead('18', 'Perry Developer'),
      Lead('19', 'Gable Developer'),
      Lead('29', 'Grimes Developer'),
      Lead('12', 'Grimes Developer'),
      Lead('22', 'James Developer')
    ];
  }

  int calculateTotalPages(int totalRows, int rowsPerPage) {
    return (totalRows / rowsPerPage).ceil();
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeInfoDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeInfoDataSource() {
    startIndex = 0;
    endIndex = rowsPerPage - 1;
    buildPaginatedDataGridRows();
  }
  List<DataGridRow> dataGridRows = [];

  Color getRowBackgroundColor(int index) {
    return index % 2 == 0 ? Colors.grey.withOpacity(0.2) : Colors.white;
  }

  @override
  List<DataGridRow> get rows {
    return dataGridRows.toList();
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
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment:
                e.columnName == 'id' ? Alignment.center : Alignment.centerLeft,
            padding: const EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
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
        DataGridCell(columnName: 'id', value: dataGridRow.id),
        DataGridCell(columnName: 'name', value: dataGridRow.name),
      ]);
    }).toList(growable: false);
  }
}
