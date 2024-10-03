import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> doctors = [
    {
      "name": "Dr. John Doe",
      "rating": 4.5,
      "medicalCenter": "Sunrise Health",
      "image": "https://via.placeholder.com/150/FF0000/FFFFFF?text=Dr.+John+Doe",
    },
    {
      "name": "Dr. Jane Smith",
      "rating": 4.7,
      "medicalCenter": "Golden Cardio",
      "image": "https://via.placeholder.com/150/00FF00/FFFFFF?text=Dr.+Jane+Smith",
    },
    {
      "name": "Dr. Emily Johnson",
      "rating": 4.2,
      "medicalCenter": "Care Center",
      "image": "https://via.placeholder.com/150/0000FF/FFFFFF?text=Dr.+Emily+Johnson",
    },
    {
      "name": "Dr. Michael Brown",
      "rating": 4.8,
      "medicalCenter": "Sunrise Health",
      "image": "https://via.placeholder.com/150/FFFF00/FFFFFF?text=Dr.+Michael+Brown",
    },
    {
      "name": "Dr. Sarah Davis",
      "rating": 4.6,
      "medicalCenter": "Golden Cardio",
      "image": "https://via.placeholder.com/150/FF00FF/FFFFFF?text=Dr.+Sarah+Davis",
    },
    {
      "name": "Dr. David Wilson",
      "rating": 4.3,
      "medicalCenter": "Care Center",
      "image": "https://via.placeholder.com/150/00FFFF/FFFFFF?text=Dr.+David+Wilson",
    },
  ];

  final List<Map<String, dynamic>> medicalCenters = [
    {
      "name": "Sunrise Health",
      "image": "https://via.placeholder.com/150/FF0000/FFFFFF?text=Sunrise+Health",
      "address": "123 Sunrise Ave",
      "rating": 4.5,
    },
    {
      "name": "Golden Cardio",
      "image": "https://via.placeholder.com/150/00FF00/FFFFFF?text=Golden+Cardio",
      "address": "456 Golden St",
      "rating": 4.7,
    },
    {
      "name": "Care Center",
      "image": "https://via.placeholder.com/150/0000FF/FFFFFF?text=Care+Center",
      "address": "789 Care Ln",
      "rating": 4.2,
    },
    {
      "name": "Wellness Clinic",
      "image": "https://via.placeholder.com/150/800080/FFFFFF?text=Wellness+Clinic",
      "address": "654 Wellness Blvd",
      "rating": 4.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://via.placeholder.com/1920x1080", // Imagine de fundal
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.white.withOpacity(0.8),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.blue),
                        Text(
                          "Seattle, USA",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.notifications_none, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search doctor...",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[100],
                          image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFSATNwwUgO44pBWmwe3BHsTWAR02KJkTiKw&s"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Looking for Specialist Doctors?",
                                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Schedule an appointment with our top doctors.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      GridView.count(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          _buildCategoryCard("Dentistry", Icons.local_hospital, Colors.pink),
                          _buildCategoryCard("Cardiology", Icons.favorite, Colors.red),
                          _buildCategoryCard("Pulmonology", Icons.air, Colors.orange),
                          _buildCategoryCard("General", Icons.healing, Colors.green),
                          _buildCategoryCard("Neurology", Icons.psychology, Colors.purple),
                          _buildCategoryCard("Gastroenterology", Icons.local_hospital, Colors.blue),
                          _buildCategoryCard("Laboratory", Icons.science, Colors.teal),
                          _buildCategoryCard("Vaccination", Icons.vaccines, Colors.deepOrange),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nearby Medical Centers",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 180,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: medicalCenters.length,
                          itemBuilder: (context, index) {
                            return _buildMedicalCenterCard(medicalCenters[index]);
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Doctors",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Listăm medicii direct în fluxul principal
                      Column(
                        children: doctors.map((doctor) => _buildDoctorCard(doctor)).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String name, IconData icon, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 40),
          SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildMedicalCenterCard(Map<String, dynamic> center) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              center["image"],
              fit: BoxFit.cover,
              height: 80,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              center["name"],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 4),
          Text(center["address"]),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 14),
              SizedBox(width: 4),
              Text(center["rating"].toString()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorCard(Map<String, dynamic> doctor) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(doctor["image"]), // Adăugăm imaginea medicului
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor["name"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow[700], size: 14),
                    SizedBox(width: 4),
                    Text(doctor["rating"].toString()),
                  ],
                ),
                SizedBox(height: 4),
                Text(doctor["medicalCenter"]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
