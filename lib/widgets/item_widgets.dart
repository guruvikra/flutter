import "package:flutter/material.dart";
import "package:practice/models/catalog.dart";

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => print(item.id),
        leading: Image.asset("assets/images/login.png"),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(item.price.toString()),
      
      
      ),
    );
  }
}