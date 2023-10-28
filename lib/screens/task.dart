import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:productive/constants/colors.dart';
import 'package:productive/constants/icons.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  inputValue = value;
                });
              },
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.red),
              ),
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$inputValue",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: dark,
        automaticallyImplyLeading: false,
        title: Builder(builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SvgPicture.asset(AppIcons.hamburger),
              ),
              const SizedBox(
                width: 236,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.note,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.asset(
                        AppIcons.vector,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            AppIcons.ellipse1,
                          ),
                          const Text(
                            "2",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          );
        }),
        // leading: SvgPicture.asset(
        //   AppIcons.hamburger,
        //   width: 24,
        //   height: 24,
        // ),
      ),
      bottomNavigationBar: Container(
        /*  padding: EdgeInsets.symmetric(horizontal: 8), */
        width: double.maxFinite,
        height: MediaQuery.of(context).padding.bottom + 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 12,
              color: Color.fromRGBO(0, 0, 0, .25),
            ),
          ],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: Color(0xFF1C1E2D),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.task,
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Tasks",
                    style: TextStyle(
                      fontSize: 9,
                      color: blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.expense,
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Expense",
                    style: TextStyle(
                      fontSize: 9,
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 12),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        color: white,
                        size: 28,
                      ),
                      Icon(
                        Icons.add,
                        color: dark,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  /* SvgPicture.asset(
                    AppIcons.create,
                    width: 24,
                    height: 24,
                  ), */

                  Text(
                    "Create",
                    style: TextStyle(
                      fontSize: 9,
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.calendar,
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Calendar",
                    style: TextStyle(
                      fontSize: 9,
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.stats,
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Stats",
                    style: TextStyle(
                      fontSize: 9,
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
