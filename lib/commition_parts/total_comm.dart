import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class TotalCommTable extends StatelessWidget {
  const TotalCommTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 28),
                  height: 416,
                  width: 400,
                  decoration: BoxDecoration(
                    color: CWhiteColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                                'Name',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'Recenntly Agencies',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                                'Role',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Sarah')),
                              DataCell(Text('Farxan  Cali')),
                              DataCell(Text('Student')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Janine')),
                              DataCell(Text('Farxan  Cali')),
                              DataCell(Text('Professor')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('William')),
                              DataCell(Text('Farxan  Cali')),
                              DataCell(Text('Associate Professor')),
                            ],
                          ),
                        ],
                      ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  height: 416,
                  width: 669,
                  decoration: BoxDecoration(
                    color: CCustomerColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child: chartToRun(),
               ),
            ]
          ),
        ),
        //  Spacer(flex: 5,),
          Padding(padding: const EdgeInsets.all(8),
          
          child: TextButton.icon(
            onPressed: (){}, icon: Icon(Icons.copyright), label: Text("CawaaleICT 2022")),)
      ],
    );
  }
  
  Widget chartToRun() {
    LabelLayoutStrategy? xContainerLabelLayoutStrategy;
    ChartData chartData;
    ChartOptions chartOptions = const ChartOptions();
    chartOptions = const ChartOptions(
    dataContainerOptions: DataContainerOptions(
    yTransform: log10,
    yInverseTransform: inverseLog10,
    ),
    );
    chartData = ChartData(
    dataRows: const [
    [10.0, 600.0, 1000000.0],
    [20.0, 1000.0, 1500000.0],
    ],
    xUserLabels: const ['Jan', 'Feb', 'Mar',],
    dataRowsLegends: const [
    'Spring',
    'Summer',
    ],
    chartOptions: chartOptions,
    );
    var verticalBarChartContainer = VerticalBarChartTopContainer(
      chartData: chartData,
      xContainerLabelLayoutStrategy: xContainerLabelLayoutStrategy,
    );

    var verticalBarChart = VerticalBarChart(
      painter: VerticalBarChartPainter(
        verticalBarChartContainer: verticalBarChartContainer,
      ),
    );
    return verticalBarChart;
  }
}