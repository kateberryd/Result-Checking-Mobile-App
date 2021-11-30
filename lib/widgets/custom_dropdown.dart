import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  String text;
  final data;

  CustomDropdown({
    required this.text,
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  GlobalKey? actionKey;
  double? height;
  double? width;
  double? xPosition;
  double? yPosition;
  bool isDropdownOpened = false;
  OverlayEntry? floatingDropdown;
  OverlayEntry? generalOverlay;

  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }
  
handleTextChange(value){
    setState(() {
      widget.text = value;
    });
  }

  void findDropdown() {
    RenderBox? box =
        actionKey!.currentContext!.findRenderObject() as RenderBox?;
    Offset position = box!.localToGlobal(Offset.zero);
    xPosition = position.dx;
    yPosition = position.dy;
    width = box.size.width;
    height = box.size.height;
  }
  

  
  
  

  OverlayEntry _createGeneralOverlay() {
    return OverlayEntry(builder: (context) {
      return Container(
        height: 200,
        color: Colors.black26,
      );
    });
  }

  void updateState() {
    if (isDropdownOpened) {
      floatingDropdown!.remove();
      generalOverlay!.remove();
    } else {
      findDropdown();
      floatingDropdown = _createFloatingDropdown();
      generalOverlay = _createGeneralOverlay();
      Overlay.of(context)?.insert(generalOverlay!);
      Overlay.of(context)?.insert(floatingDropdown!);
    }

    isDropdownOpened = !isDropdownOpened;
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
          width: MediaQuery.of(context).size.width,
          top: MediaQuery.of(context).size.height * 0.35,
          height: MediaQuery.of(context).size.height,
          child: DropDown(
              itemHeight: height! * widget.data.length,
              isDropdownOpened: isDropdownOpened,
              title: widget.text,
              data: widget.data,
              onChange: handleTextChange,
              customFunction: updateState));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: () {
        setState(() {
          updateState();
        });
      },
      child: Container(
        height: 60.0,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 1),
          border: Border.all(
            color: Color.fromRGBO(242, 242, 242, 1),
          ),
          // borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 17.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Raleway",
                  letterSpacing: 0.5,
                  color: Color.fromRGBO(107, 119, 154, 1)),
            ),
            Spacer(),
            Icon(Icons.arrow_drop_down, color: Color.fromRGBO(107, 119, 154, 1))
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatelessWidget {
  final double itemHeight;
  final String title;
  final data;
  
  final bool isDropdownOpened;

  final customFunction;
   
   final onChange;
  

  const DropDown(
      {Key? key,
      required this.itemHeight,
      required this.isDropdownOpened,
      required this.title,
      required this.data,
      this.onChange,
      required this.customFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(44.0)),
      elevation: 18.0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.23,
                    fontSize: 18.0,
                    color: Color.fromRGBO(107, 119, 154, 1),
                  ),
                ),
                Spacer(),
                Container(
                  // padding: EdgeInsets.all(2.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(107, 119, 154, 1),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                      onPressed: () {
                        customFunction();
                      },
                      icon: Icon(Icons.close_rounded),
                      iconSize: 20.0),
                )
              ]),
            ),
            Column(
                    mainAxisSize: MainAxisSize.min, // Use children total size

                children: [
                   ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return new DropdownItem(
                        text: data[index],
                        iconData: Icons.circle_rounded,
                        onChange: onChange,
                        isSelected: false,
                      );
                    }),
                    SizedBox(
            height: 30.0,
          )
                   ])
          ],
        ),
      ),
    );
  }
}

class DropdownItem extends StatelessWidget {
  final String? text;
  final IconData? iconData;
  final bool? isSelected;
  final onChange;

  const DropdownItem(
      {Key? key,
       this.onChange,
      required this.text,
      required this.iconData,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: InkWell(
        onTap: onChange(text!),
        child: Row(
          children: [
            Text(
              text!,
              style: TextStyle(
                  fontSize: 17.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  letterSpacing: 0.5,
                  color: Color.fromRGBO(107, 119, 154, 1)),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.circle_outlined),
              color: Color.fromRGBO(107, 119, 154, 1),
            ),
            
         
          ],
        ),
      ),
    );
  }
}
