import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCourseWidget extends StatelessWidget {
  final String courseName;
  final String teacherName;
  final String courseDuration;
  final double courseProgress;
  const MyCourseWidget({
    super.key,
    required this.courseName,
    required this.teacherName,
    required this.courseDuration,
    required this.courseProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[400],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  courseName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  "teacher : $teacherName",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Course duration : $courseDuration",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 12),
                // Progress Bar
                SizedBox(
                  height: 8,
                  width: 200,
                  child: LinearProgressIndicator(
                    value: courseProgress,
                    minHeight: 10,
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "80%",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: SvgPicture.asset('assets/images/screen1.svg'),
          ),
        ],
      ),
    );
  }
}
