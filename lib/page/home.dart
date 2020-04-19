import 'package:flutter/material.dart';
import 'package:fluttercorreios/service/api_correios.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiCorreios api = ApiCorreios();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dados do correio'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.cloud_download),
              onPressed: () => api.getXmlData())
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Container(child: Text('tentando converter os dados . . .')),
      )),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.restore_page),
        onPressed: () => api.getJsonData(),
        label: Text('tentar'),
      ),
    );
  }
}
