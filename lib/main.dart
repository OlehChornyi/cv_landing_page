import 'package:flutter/material.dart';
import 'package:landing_page/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: screenWidth * 0.05),
                  Container(
                    width: screenWidth * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oleh Chornyi',
                          style: textHeader,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Mobile Application Developer | Flutter Developer',
                          style: textMiddle,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Passionate mobile developer, that offers iOS and Android development solutions with the usage of hybrid development platform - Flutter. Exited to hear from you and negotiate about app design, development and lunching of your dream app. Services request available through social networks profiles.',
                          style: textSmall,
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black)),
                              onPressed: () {
                                // Handle button press
                                print('Get Started button pressed!');
                              },
                              child: Text('Order Services'),
                            ),
                            SizedBox(width: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.black, // Text color
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 1), // Border color and width
                              ),
                              child: Text(' More Details'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(
                        3.14159), // Rotates the image horizontally (pi radians)
                    child: Image.network(
                      'https://st2.depositphotos.com/1000128/5477/i/450/depositphotos_54772299-stock-photo-mobile-applications-and-internet-concept.jpg', // Replace with your image URL
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Why create an app with me?',
              style: textHeader,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(width: screenWidth * 0.1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 10),
                        Text('Moderate prices - starting from USD 5 per hour',
                            style: textMiddle),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 10),
                        Text(
                            'Full development life cicle - from design to publication in app stores',
                            style: textMiddle),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 10),
                        Text('Rapid response to clients demands and comments',
                            style: textMiddle),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 10),
                        Text('Help with ideas formation and fulfillment',
                            style: textMiddle),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 10),
                        Text('Support and feedback after delivery',
                            style: textMiddle),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100),
            Stack(
              children: [
                Image.network(
                  'https://cdn.dribbble.com/userupload/11694727/file/original-1659cf1b5b9eaaa0d5092a615d900cb7.png?resize=400x0',
                  width: screenWidth,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: screenWidth,
                  height: 400,
                  color: Colors.white.withOpacity(0.9),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an app idea? \nMake your dream come true!',
                          style: textDisplay,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Colors.black)),
                          onPressed: () {
                            // Handle button press
                            print('Get Started button pressed!');
                          },
                          child: Text('Order Services'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Text(
              "What type of services you'll probably want",
              style: textHeader,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 355,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(20), // Top-left corner radius
                            topRight:
                                Radius.circular(20), // Top-right corner radius
                          ),
                          child: Image.network(
                            'https://images.pexels.com/photos/4226256/pexels-photo-4226256.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Consultation', style: textMiddle),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('- Free of charge', style: textSmall),
                            SizedBox(height: 5),
                            Text('- Idea detalization', style: textSmall),
                            SizedBox(height: 5),
                            Text('- Time needed', style: textSmall),
                            SizedBox(height: 5),
                            Text('- Resources needed', style: textSmall),
                          ],
                        ),
                      ]),
                ),
                SizedBox(width: screenWidth * 0.05),
                Container(
                  width: 200,
                  height: 355,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image.network(
                            'https://media.licdn.com/dms/image/v2/C4E12AQEY5l8A-TyoDA/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1605199448091?e=1732752000&v=beta&t=cZ1BeNX3lUWJsVpHa-lrIKLv2C1wuLKN3NYwCFz-FEM',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('MVP - Prototype', style: textMiddle),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('- From USD 100', style: textSmall),
                            SizedBox(height: 5),
                            Text('- Prototype UI', style: textSmall),
                            SizedBox(height: 5),
                            Text('- From 1 week', style: textSmall),
                            SizedBox(height: 5),
                            Text('- iOS, Android', style: textSmall),
                          ],
                        ),
                      ]),
                ),
                SizedBox(width: screenWidth * 0.05),
                Container(
                  width: 200,
                  height: 355,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(20), // Top-left corner radius
                            topRight:
                                Radius.circular(20), // Top-right corner radius
                          ),
                          child: Image.network(
                            'https://i.insider.com/65a69fa86979d73718238108?width=700',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('App Development', style: textMiddle),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('- From USD 500', style: textSmall),
                            SizedBox(height: 5),
                            Text('- Prototype UI & UX', style: textSmall),
                            SizedBox(height: 5),
                            Text('- From 1 month', style: textSmall),
                            SizedBox(height: 5),
                            Text('- iOS, Android, Web', style: textSmall),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
            SizedBox(height: 100),
            Stack(
              children: [
                Image.network(
                  'https://42matters.com/blog-image/content/images/2022/09/ilgmyzin-Xe21OFRpqvk-unsplash.jpg',
                  width: screenWidth,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: screenWidth,
                  height: 200,
                  color: Colors.black.withOpacity(0.7),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Direct message me to ask services:',
                                  style: textMiddleWhite,
                                ),
                              ]),
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        Container(
                          width: 300,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Telegram: @olchornyi',
                                  style: textSmallWhite,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Viber: +380637104585',
                                  style: textSmallWhite,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'LinkedIn: https://www.linkedin.com/in/oleh-chornyi-ph-d-7b0505204/',
                                  style: textSmallWhite,
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
