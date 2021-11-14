import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'outfit_collection_vm.dart';

class OutfitCollectionScreen extends ViewModelBuilderWidget<OutfitCollectionViewModel> {

  const OutfitCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, OutfitCollectionViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Outfit Collection'),
        centerTitle: true,
      ),
      body: SafeArea(
        child:   Column(
          children: [

            Row(
              children: [
                IconButton(onPressed: (){}, icon: Image.asset('assets/bottom_menu_2.png', width: 25.0, height: 25.0, color: Colors.black,)),

                IconButton(onPressed: (){}, icon: Image.asset('assets/refresh.png', width: 25.0, height: 25.0,)),

                const Expanded(child: SizedBox(),),

                IconButton(onPressed: (){}, icon: Image.asset('assets/cart1.png', width: 25.0, height: 25.0,)),

              ],
            ),

            Expanded(child: Image.asset('assets/img_outfit_collection.png',
            fit: BoxFit.cover,)),
            bottomHorizentalList()
          ],
        ),
      )
    );
  }

  @override
  OutfitCollectionViewModel viewModelBuilder(BuildContext context) {
    return OutfitCollectionViewModel();
  }

}

Widget bottomHorizentalList() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0,),
    child: SizedBox(
      height: 140.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return bottomHorizentalListItem();
        },
      ),
    ),
  );
}

GestureDetector bottomHorizentalListItem() {
  return GestureDetector(
    onTap: (){
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/img_item.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(height: 5.0,),
          const Text('Shirt Name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),)
        ],
      ),
    ),
  );

}
