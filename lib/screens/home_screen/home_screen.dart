import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:test/constants/asset_constants.dart';
import 'package:test/screens/ai_chat_bot/ai_chat_bot.dart';
import 'package:test/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ListItem> electronicAssets = [
    ListItem(title: "Smart TV", srcLink: AssetConstants.smartTv),
    ListItem(title: "Fridge", srcLink: AssetConstants.fridge),
    ListItem(title: "Microwave", srcLink: AssetConstants.microwave),
  ];
  List<ListItem> furnitureAssets = [
    ListItem(title: "Bed", srcLink: AssetConstants.bed),
    ListItem(title: "Dining Table", srcLink: AssetConstants.bed),
    ListItem(title: "Sofa", srcLink: AssetConstants.sofa),
    ListItem(title: "Arm Chair", srcLink: AssetConstants.sofa2),
    ListItem(title: "Lamp", srcLink: AssetConstants.lamp),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mark_unread_chat_alt_outlined),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AIChatBot(),
              ));
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utils.screenWidth * 0.01),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Utils.screenHeight * 0.3,
                width: Utils.screenWidth,
                child: PageView.builder(
                  itemCount: electronicAssets.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Card(
                    child: Flutter3DViewer.obj(
                      src: electronicAssets[index].srcLink,

                      scale: 5,
                      // Initial scale of obj model
                      cameraX: 0,
                      // Initial cameraX position of obj model
                      cameraY: 0,
                      //Initial cameraY position of obj model
                      cameraZ: 10,
                      //Initial cameraZ position of obj model
                      //This callBack will return the loading progress value between 0 and 1.0
                      onProgress: (double progressValue) {
                        debugPrint('model loading progress : $progressValue');
                      },
                      //This callBack will call after model loaded successfully and will return model address
                      onLoad: (String modelAddress) {
                        debugPrint('model loaded : $modelAddress');
                      },
                      //this callBack will call when model failed to load and will return failure erro
                      onError: (String error) {
                        debugPrint('model failed to load : $error');
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem {
  String title;
  String srcLink;

  ListItem({required this.title, required this.srcLink});
}
