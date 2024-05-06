import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:payment_app/widget/AvatarColumn.dart';

class ActivitiesScreen extends StatefulWidget {
  @override
  _ActivitiesScreenState createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  late String _selectedInterval; // Default selected interval
  late List<_SalesData> _data;

  @override
  void initState() {
    super.initState();
    _selectedInterval = 'Day';
    _updateChartData(_selectedInterval);
  }

  void _updateChartData(String interval) {
    setState(() {
      _selectedInterval = interval;
      _data = _generateData(interval);
    });
  }

  List<_SalesData> _generateData(String interval) {
    List<_SalesData> generatedData = [];
    if (interval == 'Day') {
      generatedData = [
        _SalesData('Mon', 600000),
        _SalesData('Tue', 700000),
        _SalesData('Wed', 460000),
        _SalesData('Thu', 320000),
        _SalesData('Fri', 1000000),
        _SalesData('Sat', 400000),
        _SalesData('Sun', 690000),
      ];
    } else if (interval == 'Week') {
      generatedData = [
        _SalesData('Week 1', 2500000),
        _SalesData('Week 2', 3100000),
        _SalesData('Week 3', 2800000),
        _SalesData('Week 4', 3300000),
      ];
    } else if (interval == 'Month') {
      generatedData = [
        _SalesData('Jan', 12000000),
        _SalesData('Feb', 11500000),
        _SalesData('Mar', 11000000),
        _SalesData('Apr', 12500000),
        _SalesData('May', 13000000),
        _SalesData('Jun', 12700000),
      ];
    } else if (interval == 'Yearly') {
      generatedData = [
        _SalesData('2021', 150000000),
        _SalesData('2022', 160000000),
        _SalesData('2023', 175000000),
        _SalesData('2024', 180000000),
      ];
    }
    return generatedData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'ActivitiesScreen',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total spending',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildIntervalButton('Day'),
                  _buildIntervalButton('Week'),
                  _buildIntervalButton('Month'),
                  _buildIntervalButton('Yearly'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SfCartesianChart(
                  primaryXAxis: const CategoryAxis(),
                  primaryYAxis: NumericAxis(
                    opposedPosition: true,
                    numberFormat: NumberFormat.currency(
                      customPattern: '###,###.##\DZD',
                      symbol: '',
                    ),
                    labelStyle: const TextStyle(fontSize: 12), // Adjust font size here
                  ),
                  series: <CartesianSeries<dynamic, String>>[
                    SplineSeries<_SalesData, String>(
                      dataSource: _data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      dataLabelSettings: const DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.greenAccent,
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(width: 4), // Add space between text and arrow
                      Icon(
                        Icons.arrow_forward,
                        size: 12,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const AvatarColumn(),
          ],
        ),
      ),
    );
  }

  Widget _buildIntervalButton(String interval) {
    return GestureDetector(
      onTap: () => _updateChartData(interval),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _selectedInterval == interval
              ? Colors.deepPurple
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          interval,
          style: TextStyle(
            color: _selectedInterval == interval ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
