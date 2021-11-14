import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'tab_search_vm.dart';

class TabSearchScreen extends ViewModelBuilderWidget<TabSearchViewModel> {

  const TabSearchScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, TabSearchViewModel viewModel, Widget? child) {
    return SingleChildScrollView(
      child: Column(
          children: [

            topSearchView(),

            const SizedBox(height: 20.0,),

            itemTypes(viewModel, context),

            const SizedBox(height: 20.0,),

            Column(
              children: [
                bottomListCell('New In', viewModel, context),

                bottomListCell('Clothing', viewModel, context),

                bottomListCell('Shoes', viewModel, context),

                bottomListCell('Designer', viewModel, context),

                bottomListCell('Bags & Accessories', viewModel, context),

                bottomListCell('Collections', viewModel, context),

                bottomListCell('Sale', viewModel, context),
              ],
            )

          ],
      ),
    );
  }

  @override
  TabSearchViewModel viewModelBuilder(BuildContext context) {
    return TabSearchViewModel();
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

Widget itemTypes(TabSearchViewModel viewModel, BuildContext context) {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [

        GestureDetector(
          onTap: (){
            viewModel.itemsTabSelected(0);
          },
          child: SizedBox(
              width: 40,
              height: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Men',
                  style: TextStyle(
                    color: viewModel.itemsTabList[0] ? Colors.black : Colors.grey
                  ),),
                  if(viewModel.itemsTabList[0])
                  const Divider(
                    color: Colors.black,
                    thickness: 3,
                  )

                ],
              )),
        ),

        GestureDetector(
          onTap: (){
            viewModel.itemsTabSelected(1);
          },
          child: SizedBox(
              width: 50,
              height: 40,
              child: Column(
                children: [
                  Text('Women',
                    style: TextStyle(
                        color: viewModel.itemsTabList[1] ? Colors.black : Colors.grey
                    ),),
                  if(viewModel.itemsTabList[1])
                  const Divider(
                    color: Colors.black,
                    thickness: 3,
                  )

                ],
              )),
        ),

        GestureDetector(
          onTap: (){
            viewModel.itemsTabSelected(2);
          },
          child: SizedBox(
              width: 40,
              height: 40,
              child: Column(
                children: [
                  Text('Child',
                style: TextStyle(
                    color: viewModel.itemsTabList[2] ? Colors.black : Colors.grey
                ),),
                  if(viewModel.itemsTabList[2])
                  const Divider(
                    color: Colors.black,
                    thickness: 3,
                  )

                ],
              )),
        ),

      ],
    ),
  );
}

Widget bottomListCell(String label, TabSearchViewModel viewModel, BuildContext context) {
  return Column(
    children: [

      InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          child:
              Row(
                children: [
                  Expanded(
                    child: Text(
                      label,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                    ),
                  ),
              const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                ],
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Divider(
          color: Colors.grey[400],
        ),
      )
    ],
  );
}
