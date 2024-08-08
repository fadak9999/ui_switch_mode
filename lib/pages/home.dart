// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:ui_switch_mode/mode/provider/ModeProvider.dart';
// import 'package:ui_switch_mode/widgets/switch.dart';


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   late bool lightDarkToggle;


//   @override
//   void initState() {
  
//     lightDarkToggle = true;
  
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const Drawer(),
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Switch Buttons",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [

//           //!2222
//           Expanded(
//             child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 color: lightDarkToggle ? Colors.blue[100] : Colors.blueGrey[800],
//                 child: Center(
//                   child: LightDarkSwitch(//class
//                     value: lightDarkToggle,
//                     onChanged: (value) {
//                       setState(() {
//                         lightDarkToggle = value;

//                       });
//                       //
//                                 Provider.of<ModeProvider>(context, listen: false).chaneMode();//?
//                     },
//                   ),
//                 )),
//           ),
//            //!2222
          
        
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_switch_mode/mode/provider/ModeProvider.dart';
import 'package:ui_switch_mode/widgets/switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool lightDarkToggle = Provider.of<ModeProvider>(context).lightModeEnable;

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Switch Buttons", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
   //       //!
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: lightDarkToggle ? Colors.blue[100] : Colors.blueGrey[800],
              child: Center(
                child: LightDarkSwitch(
                  value: lightDarkToggle,
                  onChanged: (value) {
                    Provider.of<ModeProvider>(context, listen: false).chaneMode();
                  },
                ),
              ),
            ),
          ),
  //        //!
        ],
      ),
     );
  }
}
