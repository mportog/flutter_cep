// import 'package:flutter/material.dart';
// import 'package:fluttercorreios/service/api_correios.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   ApiCorreios api = ApiCorreios();
//   PageController pageController;

//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController(initialPage: 1);
//     pageController.addListener(() {
//       print(pageController.page);
//     });
//   }

//   @override
//   void dispose() {
//     pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> pages = [
//       Center(child: Text('pagina de CEP')),
//       Center(child: Text('pagina de Prazo')),
//       Center(child: Text('pagina de Frete')),
//     ];

//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text('Dados do correio'),
//           automaticallyImplyLeading: false,
//           actions: <Widget>[
//             IconButton(
//                 icon: Icon(Icons.cloud_download),
//                 onPressed: () => api.getXmlData())
//           ],
//         ),
//         body: SafeArea(
//           child: PageView.builder(
//             controller: pageController,
//             itemCount: pages.length,
//             itemBuilder: (context, index) {
//               return pages[index];
//             },
//             onPageChanged: (pageInt) => print(pageInt),
//             physics: ClampingScrollPhysics(),
//           ),
//         ),
//         bottomNavigationBar: AnimatedBuilder(
//           animation: pageController,
//           builder: (BuildContext context, Widget child) {
//             return BottomNavigationBar(
//                 currentIndex: pageController.page.round(),
//                 onTap: (index) => pageController.animateToPage(index,
//                     duration: Duration(milliseconds: 300),
//                     curve: Curves.bounceIn),
//                 items: <BottomNavigationBarItem>[
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.map, color: Colors.black),
//                       title: Text('Destino')),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.event, color: Colors.black),
//                       title: Text('Prazo')),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.attach_money, color: Colors.black),
//                       title: Text('Preço')),
//                 ]);
//           },
//         ));
//   }
// }
