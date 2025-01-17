import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:redi/components/listing_bubble.dart';
import 'package:redi/constants/constants.dart';

class BookListing extends StatelessWidget {
  const BookListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 40,
                          right: 40,
                          bottom: 10,
                        ),
                        color: Colors.grey[200],
                        width: AppMeasure.width / 1.3,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for more books.'),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListingBubble(
                        listingName: 'Fiction',
                        boxColor: Colors.deepPurple,
                        isActive: true,
                      ),
                      ListingBubble(
                        listingName: 'Romance',
                        boxColor: Colors.black,
                        isActive: false,
                      ),
                      ListingBubble(
                        listingName: 'Happy',
                        boxColor: Colors.black,
                        isActive: false,
                      ),
                      ListingBubble(
                        listingName: 'Relationships',
                        boxColor: Colors.black,
                        isActive: false,
                      ),
                      ListingBubble(
                        listingName: 'Classic',
                        boxColor: Colors.black,
                        isActive: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/animations/smart.json', width: 100),
                      Text('We are still gathering books, please try later')
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
