import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'tab_closet_vm.dart';

class TabClosetScreen extends ViewModelBuilderWidget<TabClosetViewModel> {

  const TabClosetScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, TabClosetViewModel viewModel, Widget? child) {
    return Column(
          children: [

            topSearchView(),

           const SizedBox(height: 10.0,),

            topMenuHorizantalList(viewModel),

            const SizedBox(height: 20.0,),

            subMenuList(viewModel),

            filteredView(),
        Expanded(child: Padding(padding : const EdgeInsets.only(left: 20.0),child: itemsList(viewModel, context)))
      ],
    );
  }

  @override
  TabClosetViewModel viewModelBuilder(BuildContext context) {
    return TabClosetViewModel();
  }

}

Widget topSearchView(){
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Color(0xFFF2F2F2),
      ),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIcon: Icon(Icons.search,
              color: Colors.grey,),
            isDense: true,
            contentPadding:
            EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 5),
            hintText: "Search here"),
      ),

    ),
  );
}

Widget topMenuHorizantalList(TabClosetViewModel viewModel) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0,),
    child: SizedBox(
      height: 40.0,
      child: ListView.builder(
        itemCount: viewModel.clothTypeList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return topMenuHorizantalListItem(viewModel, index, context);
        },
      ),
    ),
  );
}

GestureDetector topMenuHorizantalListItem(TabClosetViewModel viewModel, int idex, context) {
  return GestureDetector(
    onTap: (){
      viewModel.onTopMenuHorizantalListItemClick(idex);
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        decoration: BoxDecoration(
            color: viewModel.clothTypeList[idex].isSelected ? Colors.black : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            border: Border.all(
          color: Colors.grey,
          width: 1,
        )
        ),
        child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(viewModel.clothTypeList[idex].asset,
                width: 20.0,
                height: 20.0,
                color: viewModel.clothTypeList[idex].isSelected ? Colors.white : Colors.black,),

                const SizedBox(height: 5,),

                Text(
                    viewModel.clothTypeList[idex].name,
                    style: viewModel.clothTypeList[idex].isSelected ? const TextStyle(color: Colors.white) : const TextStyle(color: Colors.black)  ),

              ],
            )
        ),
    ),
  );

}

Widget subMenuList(TabClosetViewModel viewModel) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0,),
    child: SizedBox(
      height: 35.0,
      child: ListView.builder(
        itemCount: viewModel.subMenuList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return subMenuListItem(viewModel, index, context);
        },
      ),
    ),
  );
}

GestureDetector subMenuListItem(TabClosetViewModel viewModel, int idex, context) {
  return GestureDetector(
    onTap: (){
      viewModel.onSubMenuListItemClick(idex);
    },
    child: Container(
      width: 80,
          height: 35,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  viewModel.subMenuList[idex].name,
                  style: viewModel.subMenuList[idex].isSelected ? const TextStyle(color: Colors.black) : const TextStyle(color: Colors.grey)),

              if(viewModel.subMenuList[idex].isSelected)
                const Divider(
                  color: Colors.black,
                  thickness: 3,
                )
            ],
          )
      ),
  );

}

Widget filteredView(){
  return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),

    child: Row(
      children: [
        const Text('Items', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),),

        const Expanded(child: SizedBox(),),

        IconButton(onPressed: (){}, icon: Image.asset('assets/grid.png', width: 25.0, height: 25.0,)),

        IconButton(onPressed: (){}, icon: Image.asset('assets/list.png', width: 25.0, height: 25.0,)),

      ],
    ),
  );
}

Widget itemsList(TabClosetViewModel viewModel, context) {

  return GridView.count(
    childAspectRatio: MediaQuery.of(context).size.width /
        (MediaQuery.of(context).size.height / 1.8),
    crossAxisCount: 3 ,
    children: List.generate(30, (index)
    {
      return itemsListItem(context);
    }),
  );
}

GestureDetector itemsListItem(context) {
  return GestureDetector(
    onTap: (){

     Navigator.pushNamed(context, '/outfit_collection');

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
