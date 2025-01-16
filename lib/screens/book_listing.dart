import 'package:flutter/material.dart';
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
                  height: 10,
                ),
                SizedBox(
                  height: AppMeasure.height / 1.3,
                  width: AppMeasure.width,
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 10),
                      child: Container(
                        width: 100,
                        height: 40,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
