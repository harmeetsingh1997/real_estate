import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});



  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding:const  EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.grey[200]!,
                            child: const Icon(Icons.arrow_back),
                          ),
                         const  Gap(12),
                        const   Text(
                            "Go Back",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        const   Gap(12),
                        ],
                      ),
                    ),
                  ),
                 const  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: IconButton(
                      icon:const  Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
           const    Gap(15),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 480,
                          decoration: BoxDecoration(
                            image:const  DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/12/08/21/21/skyscrapers-1893201_1280.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding:const  EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                                    child:const  Text(
                                      "Open for sale",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                 const  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.white.withOpacity(.2),
                                    foregroundColor: Colors.white,
                                    radius: 27,
                                    child: IconButton(
                                      icon: const Icon(Icons.favorite),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                             const  Spacer(),
                            const   Text(
                                "Lakeshorre\nBlvd West",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white,
                                ),
                              ),
                            const   Text(
                                "unknown",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                     const  Gap(16),
                      Row(
                        children: [
                         const  Text(
                            "\$3,822",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon:const  Icon(
                                Icons.bookmark_border,
                              ),
                            ),
                          ),
                         const  Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon:const  Icon(
                                Icons.share,
                              ),
                            ),
                          ),
                        ],
                      ),
                    const   Text(
                        "Residence",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                     const  Row(
                        children: [
                          Text("4 Beds  2 Bath  1493m"),
                          Spacer(),
                          Icon(
                            Icons.apartment,
                            size: 15,
                          ),
                          Text("house")
                        ],
                      ),
                     const  Divider(
                        height: 32,
                      ),
                     const  Text(
                          "Lorem ipsum dolor sit amet, "),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Center(
                    child: Text(
                      "Explore in VR",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
           const  Gap(12),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child:const  Center(
                    child: Text(
                      "Book a Call",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}