import 'package:flutter/material.dart';
import 'package:flutter_app/storage_data_local_device/LanguageContext.dart';
import 'package:flutter_app/storage_data_local_device/LanguageModel.dart';
import 'package:flutter_app/storage_data_local_device/counter_logic.dart';
import 'package:flutter_app/storage_data_local_device/state_detail_page.dart';
import 'package:flutter_app/storage_data_local_device/theme_logic.dart';
import 'package:provider/provider.dart';

class StatePage extends StatefulWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: _dark ? Colors.grey[900] : Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    int theme = context.watch<ThemeLogic>().theme;
    String setLang = context.watch<LanguageContext>().index;
    Language lang = context.watch<LanguageContext>().lang;

    return Drawer(
      // backgroundColor: _dark ? Colors.grey : Colors.white,
      child: ListView(
        children: [
          const DrawerHeader(child: Icon(Icons.face)),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(lang.home),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ExpansionTile(
            title: Text(lang.themeColor),
            initiallyExpanded: true,
            children: [
              ListTile(
                leading: theme == 0
                    ? const Icon(Icons.check_box)
                    : const Icon(Icons.check_box_outline_blank),
                title: Text(lang.changeToDarkMode),
                trailing: const Icon(Icons.dark_mode),
                onTap: () {
                  context.read<ThemeLogic>().changeToDark();
                },
              ),
              ListTile(
                leading: theme == 1
                    ? const Icon(Icons.check_box)
                    : const Icon(Icons.check_box_outline_blank),
                title: Text(lang.changeToLightMode),
                trailing: const Icon(Icons.light_mode),
                onTap: () {
                  context.read<ThemeLogic>().changeToLight();
                },
              ),
              ListTile(
                leading: theme == 2
                    ? const Icon(Icons.check_box)
                    : const Icon(Icons.check_box_outline_blank),
                title: Text(lang.changeToSystemMode),
                trailing: const Icon(Icons.phone_android),
                onTap: () {
                  context.read<ThemeLogic>().changeToSystem();
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text(lang.langName),
            initiallyExpanded: true,
            children: [
              ListTile(
                leading: setLang == "khmer"
                    ? const Icon(
                        Icons.check_box,
                        color: Colors.blueAccent,
                      )
                    : const Icon(
                        Icons.check_box_outline_blank,
                      ),
                title: Text(lang.langKh),
                trailing: Image.asset(
                  "assets/images/khmer.png",
                  width: 25,
                  height: 25,
                ),
                onTap: () {
                  context.read<LanguageContext>().changeLanguage("khmer");
                },
              ),
              ListTile(
                leading: setLang == "english"
                    ? const Icon(
                        Icons.check_box,
                        color: Colors.blueAccent,
                      )
                    : const Icon(Icons.check_box_outline_blank),
                title: Text(lang.langEn),
                trailing: Image.asset(
                  "assets/images/english.png",
                  width: 25,
                  height: 25,
                ),
                onTap: () {
                  context.read<LanguageContext>().changeLanguage("english");
                },
              ),
              ListTile(
                leading: setLang == "chinese"
                    ? const Icon(
                        Icons.check_box,
                        color: Colors.blueAccent,
                      )
                    : const Icon(Icons.check_box_outline_blank),
                title: Text(lang.langCh),
                trailing: Image.asset(
                  "assets/images/chinese.png",
                  width: 25,
                  height: 25,
                ),
                onTap: () {
                  context.read<LanguageContext>().changeLanguage("chinese");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.purple,
      title: const Text("State Page"),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StateDetailPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.new_label_outlined,
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<CounterLogic>().decrease();
          },
          icon: const Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () {
            context.read<CounterLogic>().increase();
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _buildBody() {
    int counter = context.watch<CounterLogic>().counter;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        child: Text(
          "US President Joe Biden will depart Europe three days later having loudly recommitted to backing Ukraine as it enters a second year of conflict, working to cast aside doubts about the durability of American support and directly blaming his counterpart in the Kremlin for thrusting the continent into war.The 72 hours Biden spent on the ground in Ukraine and Poland have been among the most momentous of his presidency, the culmination both of careful, highly secretive planning by White House aides and the president’s singular, decades-held view of America’s role in the world.",
          style: TextStyle(
            fontSize: 20 + counter.toDouble(),
            // color: _dark ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
