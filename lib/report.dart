import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text('Report Screen')), // You can customize the UI further
      body: const Center(child: Text('This is the Report Screen')),
    );
  }
}


// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 // White upper section
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.235,
//                   color: Colors.white,
//                   child: const Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             CircleAvatar(
//                               backgroundImage: NetworkImage(
//                                   'https://upload.wikimedia.org/wikipedia/commons/e/eb/Ash_Tree_-_geograph.org.uk_-_590710.jpg'),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Text(
//                               'Name and Logo',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.grey),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.notifications,
//                               color: Colors.grey,
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Icon(
//                               Icons.account_circle,
//                               size: 30,
//                               color: Colors.grey,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Yellow lower section
//                 Expanded(
//                   child: Container(
//                     color: Colors.yellow[700],
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               left: 16.0, right: 16.0, top: 90.0),
//                           child: Expanded(
//                               child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text('មុខងារ'),
//                               Row(
//                                 children: [
//                                   Text(
//                                     'មើលទាំងអស់',
//                                     style: TextStyle(color: Colors.blue[700]),
//                                   ),
//                                   Icon(
//                                     Icons.arrow_forward_ios_outlined,
//                                     size: 15,
//                                     color: Colors.blue[700],
//                                   )
//                                 ],
//                               )
//                             ],
//                           )),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 16.0, right: 16.0, top: 8.0),
//                             child: GridView.count(
//                               crossAxisCount: 3,
//                               crossAxisSpacing: 10,
//                               mainAxisSpacing: 10,
//                               childAspectRatio:
//                                   1.15, // Adjust this to control the height-to-width ratio

//                               children: [
//                                 _buildFutureCard(Icons.home, 'គេហដ្ឋាន'),
//                                 _buildFutureCard(Icons.people, 'សហគមន៍'),
//                                 _buildFutureCard(Icons.money, 'ហិរញ្ញវត្ថុ'),
//                                 _buildFutureCard(Icons.handshake, 'ការសហការ'),
//                                 _buildFutureCard(Icons.warning, 'សកម្មភាព'),
//                                 _buildFutureCard(Icons.list_alt, 'របាយការណ៍'),
//                                 _buildFutureCard(Icons.abc, 'ត្រីចម្ការ'),
//                                 _buildFutureCard(Icons.grass, 'ស្រូវ'),
//                                 _buildFutureCard(Icons.pets, 'សត្វ'),
//                                 _buildFutureCard(Icons.pets, 'សត្វ'),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             // Floating card (overlapping)
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.1,
//               left: 12.0,
//               right: 12.0,
//               child: Card(
//                 color: const Color(0xFFFFEAA7).withOpacity(0.7),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(24), // Apply radius here
//                 ), // Transparent pale yellow
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 16.0, right: 16.0, bottom: 16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Header Section
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'អនុម័ត',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: const Row(
//                               children: [
//                                 Text('មើលទាំងអស់',
//                                     style: TextStyle(color: Colors.black)),
//                                 Icon(Icons.arrow_forward_ios,
//                                     size: 14, color: Colors.black),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           _buildInforCard('20', 'រង់ចាំការពិនិត្យ'),
//                           _buildInforCard('10', 'រង់ចាំការអនុម័តពីសហគមន៍'),
//                           _buildInforCard(
//                               '5', 'រង់ចាំការអនុម័តពីក្រុមព្រឹក្សាអភិបាល'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFutureCard(IconData icon, String label) {
//     return SizedBox(
//       height: 130, // Set the desired height here
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 5,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 35, color: Colors.yellow[700]),
//             const SizedBox(height: 5.0),
//             Text(label, style: const TextStyle(fontSize: 12)),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInforCard(String number, String label) {
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24.0),
//       ),
//       child: Column(
//         children: [
//           // Top part of the card (Yellow background)
//           Container(
//             height: 50,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.yellow[700], // Yellow background
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(24.0),
//                 topRight: Radius.circular(24.0),
//               ),
//               border: Border(
//                 top: BorderSide(
//                     color: Colors.yellow[700]!,
//                     width: 2.0), // Using the same color for the border
//                 left: BorderSide(color: Colors.yellow[700]!, width: 1.0),
//                 right: BorderSide(color: Colors.yellow[700]!, width: 1.0),
//               ),
//             ),
//             child: Center(
//               child: Text(
//                 number,
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//           // Bottom part of the card (White background)
//           Container(
//             height: 50,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.white, // White background
//               borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(24.0),
//                 bottomRight: Radius.circular(24.0),
//               ),
//               border: Border(
//                 left: BorderSide(color: Colors.yellow[700]!, width: 2.0),
//                 right: BorderSide(color: Colors.yellow[700]!, width: 2.0),
//                 bottom: BorderSide(color: Colors.yellow[700]!, width: 1.0),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                 child: Text(
//                   label,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontSize: 12, color: Colors.black),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
