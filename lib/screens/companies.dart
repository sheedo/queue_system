import 'package:flutter/material.dart';
import 'package:queue_system/models/company.dart';
import 'package:queue_system/screens/appointment.dart';
import 'package:queue_system/screens/statistics.dart';

class Companies extends StatefulWidget {
  static const routeName = '/companies';

  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  Widget _buildEligibleIconButtons({
    String iconSource,
    double size = 60,
    String type = 'asset',
    double horizontalPadding = 5.0,
    BoxShape shape = BoxShape.rectangle,
    BoxFit fit = BoxFit.contain,
  }) {
    assert(type == 'asset' || type == 'network');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: shape,
          image: DecorationImage(
            image: type == 'asset' ? AssetImage(iconSource) : NetworkImage(iconSource),
            fit: fit,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Queue System'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Companies',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                InkWell(
                  child: Card(
                    child: ListTile(
                      leading: _buildEligibleIconButtons(
                        iconSource: 'assets/images/digicel_logo.jpg',
                        shape: BoxShape.circle,
                      ),
                      title: Text('Digicel'),
                    ),
                  ),
                  onTap: () => Navigator.of(context).pushNamed(
                    Statistics.routeName,
                    arguments: Company('Digicel', 25, 30),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: ListTile(
                      leading: _buildEligibleIconButtons(
                        iconSource: 'assets/images/ncb_logo.png',
                        shape: BoxShape.circle,
                      ),
                      title: Text('NCB'),
                    ),
                  ),
                  onTap: () => Navigator.of(context).pushNamed(
                    Statistics.routeName,
                    arguments: Company('NCB', 55, 10),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: ListTile(
                      leading: _buildEligibleIconButtons(
                        iconSource: 'assets/images/kfc_logo.png',
                        shape: BoxShape.circle,
                      ),
                      title: Text('KFC'),
                    ),
                  ),
                  onTap: () => Navigator.of(context).pushNamed(
                    Statistics.routeName,
                    arguments: Company('KFC', 150, 50),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: ListTile(
                      leading: _buildEligibleIconButtons(
                        iconSource: 'assets/images/taj_logo.jfif',
                        shape: BoxShape.circle,
                      ),
                      title: Text('Tax Administration Jamaica'),
                    ),
                  ),
                  onTap: () => Navigator.of(context).pushNamed(
                    Statistics.routeName,
                    arguments: Company('TAJ', 950, 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.schedule),
        backgroundColor: Colors.red,
        onPressed: () => Navigator.of(context).pushNamed(Appointment.routeName),
      ),
    );
  }
}
