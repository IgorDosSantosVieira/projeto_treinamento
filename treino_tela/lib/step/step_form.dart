import 'package:flutter/material.dart';

class StepForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepFormState();
  }
}

class _StepFormState extends State<StepForm> {
  final _stepFormController = PageController();
  int _page = 0;

  List _pageList = [
    Text("page 1"),
    Text("page 1"),
    Text("page 1"),
  ];

 void _changeStep(bool nextPage){
   if (_page < 2 && nextPage) {
     setState(() {
       _page++;
     });
     _stepFormController.nextPage(
         duration: Duration(milliseconds: 300),
         curve: Curves.easeIn);
   };
 } else if (_page > 0 && !nextPage){
   setState(() {
     _page--;
  });
   _stepFormController.previousPage(
  duration: Duration(milliseconds: 300),
  curve: Curves.easeIn);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Step App Page"),
      ),
      body: PageView.builder(
          controller: _stepFormController,
          itemBuilder: (BuildContext context, int index) {
            return _pageList[index];
          }
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            onPressed: () => _changeStep(false),
            child: Text("Anterior"),
          ),
          FlatButton(
            onPressed: () => _changeStep(true),
            child: Text("Próximo"),
          ),
        ],
      ),
    );
  }
}