import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class FinalTable extends StatefulWidget {
  const FinalTable({Key? key}) : super(key: key);

  @override
  _FinalTableState createState() => _FinalTableState();
}

class Employee {
  Employee(this.id, this.name, this.designation, this.salary);

  final int id;
  final String name;
  final String designation;
  final int salary;
}

List<Employee> paginatedDataSource = [];

class _FinalTableState extends State<FinalTable> {
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  late EmployeeDataSource _employeeDataSource;
  List<Employee> _employees = [];

  @override
  void initState() {
    super.initState();
    _employees = populateData();
    _employeeDataSource = EmployeeDataSource(employees: _employees);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 300,
            width: double.infinity,
            child: SfDataGrid(
                rowsPerPage: 5,
                source: _employeeDataSource,
                columnWidthMode: ColumnWidthMode.fill,
                columns: getColumns)),
        SizedBox(
          height: 60,
          width: double.infinity,
          child: SfDataPager(
            pageCount: (_employees.length / 5).ceilToDouble(),
            delegate: _employeeDataSource,
            direction: Axis.horizontal,
          ),
        )
      ],
    );
  }

  List<GridColumn> get getColumns {
    return <GridColumn>[
      GridColumn(
          columnName: 'id',
          label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              alignment: Alignment.center,
              child: const Text(
                'ID',
              ))),
      GridColumn(
          columnName: 'name',
          label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              alignment: Alignment.center,
              child: const Text('Name'))),
      GridColumn(
          columnName: 'designation',
          width: 110,
          label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              alignment: Alignment.center,
              child: const Text(
                'Designation',
                overflow: TextOverflow.ellipsis,
              ))),
      GridColumn(
          columnName: 'salary',
          label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              alignment: Alignment.center,
              child: const Text('Salary'))),
    ];
  }
}

List<Employee> populateData() {
  return [
    Employee(10001, 'Jack', 'Manager', 150000),
    Employee(10002, 'Perry', 'Project Lead', 80000),
    Employee(10003, 'James', 'Developer', 55000),
    Employee(10004, 'Michael', 'Designer', 39000),
    Employee(10005, 'Roland Mendel', 'Developer', 45000),
    Employee(10006, 'Sven', 'UI Designer', 36000),
    Employee(10007, 'Williams', 'Developer', 44000),
    Employee(10008, 'Adams', 'Developer', 43000),
    Employee(10009, 'Edwards', 'QA Testing', 43000),
    Employee(10010, 'Grimes', 'Developer', 43000),
    Employee(10011, 'Maria Andres', 'Developer', 41000),
    Employee(10012, 'Thomas Hardy', 'Developer', 40000),
    Employee(10013, 'Hanna Moos', 'Sales Associate', 350000),
    Employee(10014, 'Elizabeth', 'Developer', 41000),
    Employee(10015, 'Patrick Simpson', 'Administrator', 33000),
    Employee(10016, 'Patrick ', 'Administrator', 33000)
  ];
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employees}) {
    buildDataGridRows(employees);
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  void buildDataGridRows(List<Employee> employees) {
    _employeeData = employees
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                  columnName: 'designation', value: e.designation),
              DataGridCell<int>(columnName: 'salary', value: e.salary),
            ]))
        .toList();
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
