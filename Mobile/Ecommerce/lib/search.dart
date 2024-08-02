

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/customCard.dart';
// import 'package:flutter_application_1/homePage.dart';
// // import 'package:flutter_application_1/addProduct.dart';
// // import 'package:flutter_application_1/customCard.dart';

// class Search extends StatefulWidget {
//   const Search({super.key});

//   @override
//   State<Search> createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   bool showCategory = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//          backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Color(0xFF3E50F3),
//             size: 20,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: const Text(
//           "Search Product",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(6),
//                       border: Border.all(
//                         color: Color(0xFFD9D9D9),
//                         width: 1,
//                       ),
//                     ),
//                     child: const Row(
//                       children: [
//                         Expanded(
//                           child: TextField(
//                             decoration: InputDecoration(
//                               hintText: 'Leather',
//                               border: InputBorder.none,
//                               contentPadding: EdgeInsets.only(left: 10),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           child: Icon(
//                             Icons.east,
//                             color: Color(0xFF3E50F3),
//                             size: 24,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10),
              
//                 GestureDetector(
//                   onTap: (){
//                     setState((){
//                       showCatagory = !showCatagory;
//                     });
//                   },
//                   child: Container(
//                     height: 48,
//                     width: 48,
//                     decoration: BoxDecoration(
//                       color: Color(0xFF3E50F3),
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: const Icon(
//                       Icons.filter_list,
//                       color: Colors.white,
//                       size: 28,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),

//             const Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     CustomeCard(),
//                     SizedBox(height: 20),
//                     CustomeCard(),
//                     SizedBox(height: 20),
//                     CustomeCard(),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
            
//             SingleChildScrollView(
//               child: Container(
//                 height: 250,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
            
//                 const SizedBox(height: 10),  
//                 const LabelAndTextField(
//                 label: 'Catagory',maxLines: 1,),
//                 const SizedBox(height: 10),
//                 const Text("Price", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
//                 RangeSliderWidget(),
//                 ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
//                                             },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(334, 44),
//                        backgroundColor: Color(0xFF3E50F3),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                    child: const Text(
//                         'APPLY',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                 ],
                
                
//                 )
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// class RangeSliderWidget extends StatefulWidget {
//   @override
//   _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
// }

// class _RangeSliderWidgetState extends State<RangeSliderWidget> {
//   // Define initial values for the range slider
//   RangeValues _currentRangeValues = RangeValues(0, 100);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 0.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           RangeSlider(
//             values: _currentRangeValues,
//             min: 0,
//             max: 100,
//             divisions: 10,
//             labels: RangeLabels(
//               _currentRangeValues.start.round().toString(),
//               _currentRangeValues.end.round().toString(),
//             ),
//             onChanged: (RangeValues values) {
//               setState(() {
//                 _currentRangeValues = values;
//               });
//             },
            
//             activeColor: Color(0xFF3E50F3), // Set the active color
//             inactiveColor: const Color(0xFFD9D9D9), // Set the inactive color
//           ),
//           SizedBox(height: 20),
//           // Text(
//           //   'Selected Range: ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
//           //   style: TextStyle(fontSize: 16),
//           // ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_application_1/customCard.dart';
import 'package:flutter_application_1/homePage.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool showCategory = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3E50F3),
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Search Product",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color(0xFFD9D9D9),
                        width: 1,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Leather',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.east,
                            color: Color(0xFF3E50F3),
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showCategory = !showCategory;
                    });
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFF3E50F3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomeCard(),
                    SizedBox(height: 20),
                    CustomeCard(),
                    SizedBox(height: 20),
                    CustomeCard(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            if (showCategory) ...[
              SingleChildScrollView(
                child: Container(
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const LabelAndTextField(
                        label: 'Category',
                        maxLines: 1,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      RangeSliderWidget(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(334, 44),
                          backgroundColor: Color(0xFF3E50F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'APPLY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}

class RangeSliderWidget extends StatefulWidget {
  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
            activeColor: Color(0xFF3E50F3),
            inactiveColor: const Color(0xFFD9D9D9),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// class LabelAndTextField extends StatelessWidget {
//   final String label;
//   final int maxLines;

//   const LabelAndTextField({
//     required this.label,
//     required this.maxLines,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 5),
//         TextField(
//           maxLines: maxLines,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//           ),
//         ),
//       ],
//     );
//   }
// }
