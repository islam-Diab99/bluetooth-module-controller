import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';

class HomeScreen extends StatelessWidget
{
  BluetoothManager bluetoothManager = BluetoothManager.instance;
  late BluetoothDevice _device;
  String MovementNumber='Null';
  int Connection=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text('Exercises',),
        ),
        actions:
        [
          IconButton(
            icon: Icon(Icons.bluetooth,),
            onPressed: () async {

              bluetoothManager.startScan(timeout: Duration(seconds: 4));
              bluetoothManager.state.listen((state) {
                switch (state) {
                  case BluetoothManager.CONNECTED:
                  print('conn');
                    break;
                  case BluetoothManager.DISCONNECTED:
                    print('didnn');
                    break;
                  default:
                    print('hi');
                    break;
                }
              });
            },
          ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           MaterialButton(
      //             onPressed: ()
      //             {
      //               MovementNumber='A';
      //               print( MovementNumber);
      //             },
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   30.0,
      //                 ),
      //               ),
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child:Image(
      //                 image: AssetImage('images/first.jpg',),
      //                 height: 200.0,
      //                 width:  100.0,
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 5.0,
      //           ),
      //           MaterialButton(
      //             onPressed: ()
      //             {
      //               MovementNumber='B';
      //               print( MovementNumber);
      //             },
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   30.0,
      //                 ),
      //               ),
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Image(
      //                 image: AssetImage('images/second.jpg',),
      //                 height: 200.0,
      //                 width:  100.0,
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           MaterialButton(
      //             onPressed: ()
      //             {
      //               MovementNumber='C';
      //               print( MovementNumber);
      //             },
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   30.0,
      //                 ),
      //               ),
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child:Image(
      //                 image: AssetImage('images/first.jpg',),
      //                 height: 200.0,
      //                 width:  100.0,
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 5.0,
      //           ),
      //           MaterialButton(
      //             onPressed: ()
      //             {
      //               MovementNumber='D';
      //               print( MovementNumber);
      //             },
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   30.0,
      //                 ),
      //               ),
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Image(
      //                 image: AssetImage('images/second.jpg',),
      //                 height: 200.0,
      //                 width:  100.0,
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           MaterialButton(
      //             onPressed: ()
      //             {
      //               MovementNumber='E';
      //               print( MovementNumber);
      //             },
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   30.0,
      //                 ),
      //               ),
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child:Image(
      //                 image: AssetImage('images/first.jpg',),
      //                 height: 200.0,
      //                 width:  100.0,
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 5.0,
      //           ),
      //           MaterialButton(
      //             onPressed: ()
      //             {
      //               MovementNumber='F';
      //               print( MovementNumber);
      //             },
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   30.0,
      //                 ),
      //               ),
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Image(
      //                 image: AssetImage('images/second.jpg',),
      //                 height: 200.0,
      //                 width:  100.0,
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

    );
  }
}


