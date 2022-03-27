import 'package:first_app/widgets/edit_product_item.dart';
import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  UserProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EditProductItem.routeName, arguments: id);
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Navigator.of(context).pushNamed(DeleteProductScreen.routeName, arguments: id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
