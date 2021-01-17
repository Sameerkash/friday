import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends HookWidget {
  final value;
  final String name;
  final Function onChanged;
  final List<String> listFeild;
  const CustomDropDown({
    Key key,
    this.name,
    this.onChanged,
    this.value,
    this.listFeild,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.00.sh, top: 0.01.sh),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), border: Border()),

        padding: const EdgeInsets.all(10),
        width: 0.4.sw,
        // color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // Spacer(),
            SizedBox(
              width: 0.03.sw,
            ),
            DropdownButton(
              value: value,
              onChanged: onChanged,
              items: listFeild
                  .map(
                    (val) => DropdownMenuItem(
                      value: val,
                      child: Text(val,
                          style: Theme.of(context).textTheme.bodyText2
                          // .copyWith(color: Theme.of(context).indicatorColor),
                          ),
                    ),
                  )
                  .toList(),

              // icon: SvgPicture.asset('assets/images/path_2.svg'),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDropDownTwo extends HookWidget {
  final value;
  final String name;
  final Function onChanged;
  final List<String> listFeild;
  const CustomDropDownTwo({
    Key key,
    this.name,
    this.onChanged,
    this.value,
    this.listFeild,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.00.sh, top: 0.01.sh),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), border: Border()),

        padding: const EdgeInsets.all(10),
        width: 0.4.sw,
        // color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // Spacer(),
            SizedBox(
              width: 0.03.sw,
            ),
            DropdownButton(
              value: value,
              onChanged: onChanged,
              items: listFeild
                  .map(
                    (val) => DropdownMenuItem(
                      value: val,
                      child: Text(val,
                          style: Theme.of(context).textTheme.bodyText2
                          // .copyWith(color: Theme.of(context).indicatorColor),
                          ),
                    ),
                  )
                  .toList(),

              // icon: SvgPicture.asset('assets/images/path_2.svg'),
            )
          ],
        ),
      ),
    );
  }
}

class DirectSelectFeild extends StatelessWidget {
  final buttonPadding = const EdgeInsets.fromLTRB(0, 8, 0, 0);

  final List<String> data;
  final String label;
  final Function(String, int, BuildContext) onSelect;

  DirectSelectFeild({
    Key key,
    this.data,
    this.label,
    this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //     alignment: AlignmentDirectional.centerStart,
        //     // margin: EdgeInsets.only(left: 4),
        //     child: Text(
        //       label,
        //       style: Theme.of(context).textTheme.bodyText2,
        //     )),
        Padding(
          padding: buttonPadding,
          child: Container(
            // decoration: _getShadowDecoration(),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            child: DirectSelectList<String>(
                              values: data,
                              defaultItemIndex: 0,
                              itemBuilder: (String value) =>
                                  getDropDownMenuItem(value),
                              focusedItemDecoration: _getDslDecoration(),
                              onItemSelectedListener: onSelect,
                            ),
                            padding: EdgeInsets.only(left: 12))),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: _getDropdownIcon(),
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }

  DirectSelectItem<String> getDropDownMenuItem(String value) {
    return DirectSelectItem<String>(
      itemHeight: 56,
      value: value,
      itemBuilder: (context, value) {
        return Text(
          value,
          style: Theme.of(context).textTheme.bodyText2,
        );
      },
    );
  }
}

_getDslDecoration() {
  return BoxDecoration(
    border: BorderDirectional(
      bottom: BorderSide(width: 1, color: Colors.black12),
      top: BorderSide(width: 1, color: Colors.black12),
    ),
  );
}

Icon _getDropdownIcon() {
  return Icon(
    Icons.unfold_more,
    color: Colors.blueAccent,
  );
}
