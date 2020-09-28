import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/*
  Sends finished graphs to view_data.dart
  Will need a Database to send the charts to for later viewing
*/

class Visual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              child: charts.LineChart(
                dataForGraph(),
                animate: true,
                behaviors: [
                  charts.ChartTitle('Fatigue Tracking Chart'),
                  charts.ChartTitle('Level of Fatigue',
                      behaviorPosition: charts.BehaviorPosition.start),
                  charts.ChartTitle('Hour',
                      behaviorPosition: charts.BehaviorPosition.bottom),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static List<charts.Series<HourlyFatigueData, num>> dataForGraph() {
    var data = [
      //When button is pressed, it will send the number to num
      //In the x coordinate, you'll need the hour.
      HourlyFatigueData(1, 2),
      HourlyFatigueData(2, 4),
    ];

    return [charts.Series<HourlyFatigueData, num>(
      id: ,
      colorFn: ,
      domainFn: ,
      measureFn: ,
      data: data)
    ];
  }
}

class HourlyFatigueData {
  final int hour;
  final int rating;
  HourlyFatigueData(this.hour, this.rating);
}

//--------------------ERASE BOTTOM ONCE TOP IS IMPLEMENTED----------------------

class Visualization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    {
      //returns a box that takes up the screen to populate with widgets
      return Scaffold(
        //centers the line chart and places it in a column
        body: Center(
          child: Column(
            //centers in the vertical middle of column.
            //Possibly just set distance from top to keep space for explanation below
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //places line chart in a box
              SizedBox(
                height: 250,
                //charts.LineChart is a method in the charts_flutter package.
                //Takes <dynamic, num> for the Series arguments.
                child: charts.LineChart(
                  //the list
                  _createVisualizationData(),
                  animate: true,
                  //gives titles in the chart
                  behaviors: [
                    charts.ChartTitle('Company Size vs Number of Companies'),
                    charts.ChartTitle('Number of Companies',
                        behaviorPosition: charts.BehaviorPosition.start),
                    charts.ChartTitle('Company Size',
                        behaviorPosition: charts.BehaviorPosition.bottom)
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  //A function that makes a list (array)
  static List<charts.Series<CompanySizeVsNumberOfCompanies, num>>
      _createVisualizationData() {
    var data = [
      CompanySizeVsNumberOfCompanies(1, 1),
      CompanySizeVsNumberOfCompanies(2, 1),
      CompanySizeVsNumberOfCompanies(3, 3),
      CompanySizeVsNumberOfCompanies(4, 5),
      CompanySizeVsNumberOfCompanies(5, 7),
      CompanySizeVsNumberOfCompanies(6, 10),
      CompanySizeVsNumberOfCompanies(7, 10),
      CompanySizeVsNumberOfCompanies(8, 10),
      CompanySizeVsNumberOfCompanies(9, 10),
      CompanySizeVsNumberOfCompanies(10, 10),
      CompanySizeVsNumberOfCompanies(11, 10),
      CompanySizeVsNumberOfCompanies(12, 10),
    ];

    //returns the actual graph
    return [
      charts.Series<CompanySizeVsNumberOfCompanies, num>(
          id: 'CompanySizeVsNumberOfCompanies',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (CompanySizeVsNumberOfCompanies dataPoint, _) =>
              dataPoint.companySize,
          measureFn: (CompanySizeVsNumberOfCompanies dataPoint, _) =>
              dataPoint.numberOfCompanies,
          data: data)
    ];
  }
}

//graph data for x and y
class CompanySizeVsNumberOfCompanies {
  final int companySize;
  final int numberOfCompanies;

  CompanySizeVsNumberOfCompanies(this.companySize, this.numberOfCompanies);
}
