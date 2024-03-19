import 'package:add_count/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AddCount extends StatefulWidget {
  const AddCount({super.key});
  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  final CountViewModel add = CountViewModel();
  @override
  void initState() {
    add.updateName();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ChangeNotifierProvider(
        create: (_) => add,
        child : Consumer<CountViewModel>(
          builder: (context, addView, child){
            return Center(
              child : Text(
                "Count : ${addView.count}",
                style: TextStyle(
                  color : Colors.black,
                  fontSize: 35.sp
                ),
              )
            );
          },
        )
      )
    );
  }
}


