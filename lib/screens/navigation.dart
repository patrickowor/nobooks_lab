import 'package:flutter/material.dart';
import 'package:nobooks/screens/pages/arena_page.dart';
import 'package:nobooks/screens/pages/assignment_page.dart';
import 'package:nobooks/screens/pages/dashboard_page.dart';
import 'package:nobooks/screens/pages/forum_page.dart';
import 'package:nobooks/screens/pages/notes_page.dart';
import 'package:nobooks/screens/pages/records_page.dart';
import 'package:nobooks/screens/pages/testexam_page.dart';

import '../assets/illumino_icons.dart';
import '../utilities/constants.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraint.maxHeight,
                    minWidth: (MediaQuery.of(context).size.width / 4),
                  ),
                  child: IntrinsicHeight(
                    child: NavigationRail(
                      extended: false,
                      labelType: NavigationRailLabelType.all,
                      selectedIndex: index,
                      onDestinationSelected: (index) => setState(() => this.index = index),
                      destinations: _buildDestinations(),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: (MediaQuery.of(context).size.width / 4) - 20,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/NoBooksLogologo.png'),
                            fit: BoxFit.contain,
                          )),
                        ),
                      ),

                      // backgroundColor: myAppBarColor,
                      // elevation: 100,
                    ),
                  ),
                ),
              );
            },
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(child: Container(child: buildPages())),
        ],
      ),
    );
  }

  List<NavigationRailDestination> _buildDestinations() {
    return [
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.dashboard),
          Text(' Dashboard'),
        ]),
        label: const Text(""),
      ),
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.book),
          Text(' Notes'),
        ]),
        label: const Text(""),
      ),
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.tasks),
          Text(' Assignments'),
        ]),
        label: const Text(""),
      ),
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.examstest),
          Text(' Tests & Exams'),
        ]),
        label: const Text(""),
      ),
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.files),
          Text(' Records'),
        ]),
        label: const Text(""),
      ),
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.leaderboard),
          Text('Arena'),
        ]),
        label: const Text(""),
      ),
      NavigationRailDestination(
        icon: Row(children: const [
          Icon(IlluminoIcons.forum),
          Text(' Forum'),
        ]),
        label: const Text(""),
      ),
    ];
  }

  // ignore: non_constant_identifier_names
  buildPages() {
    switch (index) {
      case 0:
        return const Dashboard();
      case 1:
        return const NotesPage();
      case 2:
        return const AssignmentPage();
      case 3:
        return const TestPage();
      case 4:
        return const RecordsPage();
      case 5:
        return const ArenaPage();
      case 6:
        return const ForumPage();
      default:
        return const Dashboard();
    }
  }
}

// @override
// Widget build2(BuildContext context) {
//   return Scaffold(
//     body: Row(
//       children: [
//         widget(
//           child: NavigationRail(
//             selectedIndex: index,
//             destinations: _buildDestinations(),
//             leading: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 50,
//                 width: 20,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                   image: AssetImage('assets/NoBooksLogologo.png'),
//                   fit: BoxFit.contain,
//                 )),
//               ),
//             ),
//             extended: true,
//             backgroundColor: myAppBarColor,
//             elevation: 100,
//             onDestinationSelected: (index) => setState(() => this.index = index),
//           ),
//         ),
//         const VerticalDivider(
//           width: 1,
//         ),
//         Expanded(child: buildPages()),
//       ],
//     ),
//   );
// }
