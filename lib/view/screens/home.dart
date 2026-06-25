import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:curio/model/services/greetings.dart';
import 'package:curio/view/widgets/custom_my_course.dart';
import 'package:curio/view/widgets/image_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getGreeting(),
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "How are you today",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Spacer(),
                CircleAvatar(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[400],
                      hintText: "search courses",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.tune_rounded,
                      color: Color(0xFF2C2C2C),
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("Category"),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,

                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,

                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,

                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,

                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,

                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text("New courses"),
                TextButton(onPressed: () {}, child: Text('show all courses')),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  ImageCard(
                    imageUrl: 'anyurlfornow',
                    title: 'Yes I need some titles here',
                  ),
                  ImageCard(
                    imageUrl: 'anyurlfornow',
                    title: 'Yes I need some titles here',
                  ),
                ],
              ),
            ),
            Text("my courses"),
            SizedBox(height: 10),
            MyCourseWidget(
              courseName: "Flutter course for begginers",
              teacherName: "Abdulaah Mansour",
              courseDuration: "1h and 20m",
              courseProgress: 0.7,
            ),
            SizedBox(height: 10),
            MyCourseWidget(
              courseName: "Advanced Django",
              teacherName: "Sam Altman",
              courseDuration: "2h and 20m",
              courseProgress: 0.4,
            ),
            SizedBox(height: 10),
            MyCourseWidget(
              courseName: "Flutter course for begginers",
              teacherName: "Abdulaah Mansour",
              courseDuration: "1h and 20m",
              courseProgress: 0.7,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: 0,
        borderRadius: 16,
        curve: Curves.bounceInOut,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: (p0) {},
        items: [
          CrystalNavigationBarItem(
            icon: Icons.home,
            badge: Badge(
              label: Text("9+", style: TextStyle(color: Colors.white)),
            ),
          ),
          CrystalNavigationBarItem(icon: Icons.favorite),
          CrystalNavigationBarItem(icon: Icons.menu_rounded),
          CrystalNavigationBarItem(icon: Icons.view_cozy_outlined),
        ],
      ),
    );
  }
}
