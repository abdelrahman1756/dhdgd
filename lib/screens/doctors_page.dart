import 'package:flutter/material.dart';

class DoctorsPage extends StatelessWidget {
  DoctorsPage({super.key});

  final List<Map<String, String>> doctors = [
    {
      'name': 'Dr. Alexander Bennett',
      'degree': 'Ph.D.',
      'specialty': 'Dermato-Genetics',
      'image': 'assets/images/doctor.png'
    },
    {
      'name': 'Dr. Michael Davidson',
      'degree': 'M.D.',
      'specialty': 'Solar Dermatology',
      'image': 'assets/images/doctor.png'
    },
    {
      'name': 'Dr. Olivia Turner',
      'degree': 'M.D.',
      'specialty': 'Dermato-Endocrinology',
      'image': 'assets/images/doctor.png'
    },
    {
      'name': 'Dr. Sophia Martinez',
      'degree': 'Ph.D.',
      'specialty': 'Cosmetic Bioengineering',
      'image': 'assets/images/doctor.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xff1C3764)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Doctors',
          style: TextStyle(
            color: Color(0xff1C3764),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 11),
            decoration: const BoxDecoration(
              color: Color(0xffCECECE),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Color(0xff1C3764)),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 11),
            decoration: const BoxDecoration(
              color: Color(0xffCECECE),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.sort, color: Color(0xff1C3764)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
             Row(
                children: [
                  Text(
                    'Sort By',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // "A-Z" Button
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xff1C3764),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'A - Z',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Star Icon Button
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffCECECE),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.star_border, color: Color(0xff1C3764)),
                  ),
                  const SizedBox(width: 8),
                  // Heart Icon Button
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffCECECE),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.favorite_border, color: Color(0xff1C3764)),
                  ),
                ],
              ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: const Color(0xffE8E8E8), // لون الخلفية ليطابق التصميم
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40, // تكبير الصورة
                            backgroundImage:
                                AssetImage(doctors[index]['image']!),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doctors[index]['name']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1C3764),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  doctors[index]['degree']!,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  doctors[index]['specialty']!,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xff1C3764),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                      ),
                                      child: const Text(
                                        'Info',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(Icons.info_outline,
                                          color: Colors.grey),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.chat_bubble_outline,
                                          color: Colors.grey),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.favorite_border,
                                          color: Colors.grey),
                                      onPressed: () {
                                        // الانتقال إلى صفحة جديدة عند الضغط على أيقونة القلب
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FavoritePage()),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// الصفحة الجديدة التي يتم الانتقال إليها عند الضغط على أيقونة القلب
class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Doctor'),
        backgroundColor: const Color(0xff1C3764),
      ),
      body: const Center(
        child: Text(
          'This is the favorite doctor page!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
