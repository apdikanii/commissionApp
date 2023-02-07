
import 'dart:js';

import 'package:commit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

class CustomerTable extends StatefulWidget {
   const CustomerTable({super.key});

  @override
  State<CustomerTable> createState() => _CustomerTableState();
}

class _CustomerTableState extends State<CustomerTable> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _businessContr = TextEditingController();
  final TextEditingController _phoneNo = TextEditingController();

  List<Map<String, dynamic>> _items = [];

  final _shoppingBox = Hive.box('_shopping_box');

  @override
  void initState (){
    super.initState();
    _refreshItems(); // load data when app starts 
  }

  void _refreshItems() {
    final data = _shoppingBox.keys.map((key) {
    final item = _shoppingBox.get(key);
    return {'key': key, 'name': item['name'], 'business': item['business'], 'phone': item['phone'],};
    }).toList();
    setState((){
      _items = data.reversed.toList();
      //we use "reversed" to sort items in order from the latest to the oldest
    });
  }

  //create new item
  Future<void> _createItem(Map<String, dynamic> newItem) async{
    await _shoppingBox.add(newItem);
    _refreshItems();
  }

 Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
  await _shoppingBox.put(itemKey, item);
  _refreshItems();
 }

 Future <void> _deleteItem(int itemKey) async {
  await _shoppingBox.delete(itemKey);
  _refreshItems();
  //Display a snackbar
  // ScaffoldMessenger.of(context).showSnackBar(
  //   const SnackBar(content: Text('an item has been deleted'))
  // );
 }

  

  void _showForm(BuildContext ctx, int? itemKey) async {
    if (itemKey != null){
      final existingItem = 
      _items.firstWhere((element) => element['key'] == itemKey);
      _nameController.text = existingItem['name'];
      _businessContr.text = existingItem['business'];
      _phoneNo.text = existingItem['phone'];
    }
  showAlert() {
    showDialog(context: ctx,
     builder: (BuildContext context,) {
      BorderRadius.circular(18);
      return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.only(top: 55, bottom: 25),
          child: SingleChildScrollView(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(hintText: "Full name"),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: _businessContr,
              decoration: const InputDecoration(hintText: "Business"),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: _phoneNo,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Phone Number"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () async{
              if (itemKey == null)
               { _createItem({
                  'name': _nameController.text,
                  'business': _businessContr.text,
                  'phone': _phoneNo.text
                });
                }
                if (itemKey != null){
                  _updateItem(itemKey, {
                    'name': _nameController.text.trim(),
                    'business': _businessContr.text.trim(),
                    'phone': _phoneNo.text.trim(),
                  });
                }
                //clear the text fields
                _nameController.text = '';
                _businessContr.text = '';
                _phoneNo.text = '';

                Navigator.of(ctx).pop();
            }, child: Text(itemKey == null ? 'Create New': 'Update'), )
        ]),
        //
          ),
        ),
        //  actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(bottom: 42),
        //     child: MyButtom(controller: _phoneNo, text: "Next"),
        //   )
        //   ],
      );
     }
     );
}
    // showModelBottomSheet(
    //   context: ctx,
    //   elevation: 5,
    //   isScrollControlled: true,
    //   builder: (_) => Container(
    //     padding: EdgeInsets.only(
    //       bottom: MediaQuery.of(ctx).viewInsets.bottom,
    //       top: 15,
    //       left: 15,
    //       right: 15
    //     ),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.end,
    //       children: [
    //         TextField(
    //           controller: _nameController,
    //           decoration: const InputDecoration(hintText: "Full name"),
    //         ),
    //         const SizedBox(height: 10,),
    //         TextField(
    //           controller: _businessContr,
    //           decoration: const InputDecoration(hintText: "Business"),
    //         ),
    //         const SizedBox(height: 10,),
    //         TextField(
    //           controller: _phoneNo,
    //           keyboardType: TextInputType.number,
    //           decoration: const InputDecoration(hintText: "Phone Number"),
    //         ),
    //         const SizedBox(height: 20,),
    //         ElevatedButton(
    //           onPressed: () async{
    //           if (itemKey == null)
    //            { _createItem({
    //               'name': _nameController.text,
    //               'business': _businessContr.text,
    //               'phone': _phoneNo.text
    //             });
    //             }
    //             if (itemKey != null){
    //               _updateItem(itemKey, {
    //                 'name': _nameController.text.trim(),
    //                 'business': _businessContr.text.trim(),
    //                 'phone': _phoneNo.text.trim(),
    //               });
    //             }
    //             //clear the text fields
    //             _nameController.text = '';
    //             _businessContr.text = '';
    //             _phoneNo.text = '';

    //             Navigator.of(ctx).pop();
    //         }, child: Text(itemKey == null ? 'Create New': 'Update'), )
    //     ]),
    //   )
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //  Row(
          //               children: [
          //                 Text("Show", style: GoogleFonts.rubik(
          //                 fontSize: 25, 
          //                 fontWeight: FontWeight.w500, color: CBlackColor
          //               ),),
          //               //bottom field will put here
          //               Container(
          //                 decoration: BoxDecoration(
          //                   color: CCustomerColor,
          //                   borderRadius: BorderRadius.circular(5)
          //                 ),
          //                 child: TextButton.icon(icon: Padding(
          //                   padding: const EdgeInsets.all(10.0),
          //                   child: Container(
          //                     height: 41,
          //                     width: 42,
          //                     decoration: BoxDecoration( 
          //                       color: CProductColor,
          //                       borderRadius: BorderRadius.circular(40)
          //                     ),
          //                     child: Icon(Icons.add, color: CCustomerColor,),
          //                   ),
          //                 ), label: Padding(
          //                   padding: const EdgeInsets.only(right: 25),
          //                   child: Text("Add Customer", style: GoogleFonts.rubik(
          //                     fontSize: 25, fontWeight: FontWeight.w500, color: CWhiteColor
          //                   ),),
          //                 ), onPressed: () => _showForm(context, null),),
          //               ),
          //               ],
          //             ),
                     
          ListView.builder(
            itemCount: _items.length,
            itemBuilder: (_, index){
            final currentItem = _items[index];
            return Card(
              color: CCustomerColor,
              margin: const EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                title: Text(currentItem['name']),
                subtitle: Text(currentItem['business'].toString()),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () =>
                      _showForm(context, currentItem['key'])),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _deleteItem(currentItem['key'])),
                  ],
                ),
              ),
            );
          }),
        ],
       ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () => _showForm(context, null)),
    );
  }
  
  // void showModelBottomSheet({required BuildContext context, required int elevation, 
  // required bool isScrollControlled, required Container Function(dynamic _) builder}) {}
}