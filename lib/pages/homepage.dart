import "package:flutter/material.dart";
import "package:practice/models/catalog.dart";
import "package:practice/widgets/drawer.dart";
import "package:practice/widgets/item_widgets.dart";


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var name="Guru Vikram";
    final dummy=List.generate(20, (index) => Catalogmodel.item[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
        body: Padding(
          
          // ignore: avoid_unnecessary_containers
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: dummy.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummy[index]);
            },
          
          )
        ),
        drawer:MyDrawer(),
      );
  }
}
