import 'package:flutter/material.dart';


class IncDecSignal extends StatefulWidget {
  IncDecSignal({
    super.key, 
    this.initialValue = 1,
    this.isPrefix = false,
    this.prefixText,
    required this.onChanged
    }){
      if(isPrefix && prefixText == null) {
        throw ArgumentError('when isPrefix is true, you should povide prefixText');
      }
    }
  final int initialValue;
  final bool isPrefix;
  final String? prefixText;
  final Function(int) onChanged;
  
  // int onChanged(int value){ return value;}
  @override
  IncDecSignalState_ createState() => IncDecSignalState_();
}

// ignore: camel_case_types
class IncDecSignalState_ extends State<IncDecSignal> {

  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _increment() {
    setState(() {
      _counter++;
      widget.onChanged(_counter);
    });
  }

  void _decrement() {
    setState(() {
      if(_counter <=1) { return; }
      _counter--;
      widget.onChanged(_counter);
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        widget.isPrefix? Text('${widget.prefixText}') : const SizedBox.shrink(),
        IconButton(
          onPressed: _decrement,
          icon: const Icon(Icons.remove_circle)),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(3)
              ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text('$_counter')
          ), 
          IconButton(
            onPressed: _increment,
            icon: const Icon(Icons.add_circle)
          )
      ],
    );
  }
}
