import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // White upper section
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.04),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: const NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/e/eb/Ash_Tree_-_geograph.org.uk_-_590710.jpg'),
                              radius: MediaQuery.of(context).size.width * 0.06,
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Text(
                              'Name and Logo',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.notifications,
                                size: MediaQuery.of(context).size.width * 0.07,
                                color: Colors.grey),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Icon(Icons.account_circle,
                                size: MediaQuery.of(context).size.width * 0.09,
                                color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Yellow lower section
                Expanded(
                  child: Container(
                    color: Colors.yellow[700],
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.04,
                              right: MediaQuery.of(context).size.width * 0.04,
                              top: MediaQuery.of(context).size.height * 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('មុខងារ'),
                              Row(
                                children: [
                                  Text(
                                    'មើលទាំងអស់',
                                    style: TextStyle(
                                      color: Colors.blue[700],
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.035,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: MediaQuery.of(context).size.width *
                                        0.04,
                                    color: Colors.blue[700],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.04,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: GridView.count(
                              crossAxisCount: 3,
                              crossAxisSpacing:
                                  MediaQuery.of(context).size.width * 0.02,
                              mainAxisSpacing:
                                  MediaQuery.of(context).size.height * 0.02,
                              childAspectRatio:
                                  1.2, // Adjusted to prevent squishing
                              children: [
                                _buildFutureCard(
                                    Icons.home, 'គេហដ្ឋាន', context),
                                _buildFutureCard(
                                    Icons.people, 'សហគមន៍', context),
                                _buildFutureCard(
                                    Icons.money, 'ហិរញ្ញវត្ថុ', context),
                                _buildFutureCard(
                                    Icons.handshake, 'ការសហការ', context),
                                _buildFutureCard(
                                    Icons.warning, 'សកម្មភាព', context),
                                _buildFutureCard(
                                    Icons.list_alt, 'របាយការណ៍', context),
                                _buildFutureCard(
                                    Icons.abc, 'ត្រីចម្ការ', context),
                                _buildFutureCard(Icons.grass, 'ស្រូវ', context),
                                _buildFutureCard(Icons.pets, 'សត្វ', context),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Floating card (overlapping)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03,
              child: Card(
                color: const Color(0xFFFFEAA7).withOpacity(0.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'អនុម័ត',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'មើលទាំងអស់',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size:
                                      MediaQuery.of(context).size.width * 0.03,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: _buildInforCard(
                                  '20', 'រង់ចាំការពិនិត្យ', context)),
                          SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  0.02), // Spacing
                          Flexible(
                              child: _buildInforCard(
                                  '10', 'រង់ចាំការអនុម័តពីសហគមន៍', context)),
                          SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  0.02), // Spacing
                          Flexible(
                              child: _buildInforCard(
                                  '5',
                                  'រង់ចាំការអនុម័តពីក្រុមព្រឹក្សាអភិបាល',
                                  context)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFutureCard(IconData icon, String label, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              size: MediaQuery.of(context).size.height * 0.05,
              color: Colors.yellow[700]),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            label,
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
          ),
        ],
      ),
    );
  }

  Widget _buildInforCard(String number, String label, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        children: [
          // Top part of the card (Yellow background)
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: double.infinity, // Full width of the container
            decoration: BoxDecoration(
              color: Colors.yellow[700],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Bottom part of the card (White background)
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
              child: Center(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
