import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,Nurul  ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What do you want to cook today?',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 129, 129, 129),
                          ),
                        ),
                      ],
                    ),
                    AvatarFrame(
                      imageUrl: 'https://i.pinimg.com/564x/e4/e0/02/e4e002998ed2fdf3e6bb5f42a0845b88.jpg',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipe Recommendation',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: AvatarFrame(
                              imageUrl: 'https://i.pinimg.com/564x/eb/cb/c6/ebcbc6aaa9deca9d6efc1efc93b66945.jpg',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 0),
                      Text(
                        'Get Your Personalized Recipe ',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      Text(
                        'Recommendation in 4 steps',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print('Get Recipe button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              primary: Color.fromARGB(255, 249, 203, 102),
                            ),
                            child: Text('Get Started'),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              print('Skip button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                            ),
                            child: Text('Skip'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Recipes',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the "See All" action here
                        print('See All Popular Recipe pressed');
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), 
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecipeCard(
                        imageUrl: 'https://i.pinimg.com/564x/39/63/05/3963054814cc53e0be8d2481a728835b.jpg',
                        dishName: 'Spaghetti Bolognese',
                        time: '30-45 Minutes',
                        difficulty: 'Medium',
                        chefName: 'chef albert',
                      ),
                      SizedBox(width: 20),
                      RecipeCard(
                        imageUrl: 'https://i.pinimg.com/564x/86/f4/9f/86f49f12a18682310a66e4b7e778bad7.jpg',
                        dishName: 'Classic Beef Stew',
                        time: '45-60 Minutes',
                        difficulty: 'Easy',
                        chefName: 'chef juna',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Creator',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the "See All" action here
                        print('See All Popular Actor pressed');
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), 
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AvatarRecipeCard(
                        imageUrl: 'https://i.pinimg.com/564x/66/14/d2/6614d28992474dcb6559e4bdb334d1d6.jpg',
                        chefName: 'chef juna',
                        time: '124',
                        like: '41391',
                        dishName: 'chef juna',
                      ),
                      SizedBox(width: 10),
                      AvatarRecipeCard(
                        imageUrl: 'https://i.pinimg.com/736x/61/39/c3/6139c32fadd423438e8c36081eacb7fc.jpg',
                        chefName: 'chef gordon',
                        time: '98',
                        like: '7323',
                        dishName: 'chef gordon',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 219, 140, 20),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
  icon: Padding(
    padding: EdgeInsets.only(top: 8.0), 
    child: Container(
      width: 50,
      height: 18,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(189, 169, 130,0), 
            blurRadius: 30,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Icon(Icons.home, color: Colors.black),
    ),
  ),
  label: 'Home',
),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String imageUrl;
  final String dishName;
  final String time;
  final String difficulty;
  final String chefName;

  RecipeCard({
    required this.imageUrl,
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.chefName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.black,
                ),
                SizedBox(width: 4),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  chefName,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarRecipeCard extends StatelessWidget {
  final String dishName;
  final String time; 
  final String like; 
  final String imageUrl; 
final String chefName;
  AvatarRecipeCard({
    required this.dishName,
    required this.time,
    required this.like,
    required this.imageUrl,
    required this.chefName
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: const Color.fromARGB(255, 218, 218, 218), 
            ),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  imageUrl, 
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book, 
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 6),
                Text(
                  time, 
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite, 
                  size: 14,
                  color: Colors.black,
                ),
                SizedBox(width: 4),
                Text(
                  like,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarFrame extends StatelessWidget {
  final String imageUrl;

  AvatarFrame({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}