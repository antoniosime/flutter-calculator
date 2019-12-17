import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'style.dart';

List<CustomButton> list = new List<CustomButton>();

List<CustomButton> getButtons(Function func) {
  List<CustomButton> list = new List<CustomButton>();

  list.add(new CustomButton(
    type: Type.clearall,
    color: noonColor,
    onPressed: () => func(Type.clearall, "C"),
    child: Text(
      "C",
      style: textStyle.copyWith(color: Colors.lightBlue),
    ),
  ));

  list.add(new CustomButton(
    type: Type.operations,
    color: noonColor,
    onPressed: () => func(Type.operations, "/"),
    child: Text(
      "/",
      style: textStyle.copyWith(color: Colors.lightBlue),
    ),
  ));

  list.add(new CustomButton(
    type: Type.operations,
    color: noonColor,
    onPressed: () => func(Type.operations, "X"),
    child: Text(
      "X",
      style: textStyle.copyWith(color: Colors.lightBlue),
    ),
  ));

  list.add(new CustomButton(
    type: Type.clear,
    color: noonColor,
    onPressed: () => func(Type.clear, ""),
    child: Icon(
      Icons.delete_sweep,
      color: Colors.blue,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "7"),
    child: Text(
      "7",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "8"),
    child: Text(
      "8",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "9"),
    child: Text(
      "9",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.operations,
    color: noonColor,
    onPressed: () => func(Type.operations, "-"),
    child: Text(
      "-",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "6"),
    child: Text(
      "6",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "5"),
    child: Text(
      "5",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "4"),
    child: Text(
      "4",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.operations,
    color: noonColor,
    onPressed: () => func(Type.operations, "+"),
    child: Text(
      "+",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "3"),
    child: Text(
      "3",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "2"),
    child: Text(
      "2",
      style: textStyle,
    ),
  ));
  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => () => func(Type.number, "1"),
    child: Text(
      "1",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.operations,
    color: Colors.lightBlue,
    onPressed: () => func(Type.operations, "="),
    child: Text("=", style: textStyle.copyWith(color: Colors.white)),
  ));

  list.add(new CustomButton(
    type: Type.operations,
    color: numberColor,
    onPressed: () => func(Type.operations, "%"),
    child: Text(
      "%",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => func(Type.number, "0"),
    child: Text(
      "0",
      style: textStyle,
    ),
  ));

  list.add(new CustomButton(
    type: Type.number,
    color: numberColor,
    onPressed: () => print("X"),
    child: Text(
      ".",
      style: textStyle,
    ),
  ));

  return list;
}
