import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Adaptive action sheet',style: TextStyle(fontSize: 15)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAdaptiveActionSheet(
                  context: context,
                  title: const Text('Add Item',style: TextStyle(fontSize: 20)),
                  actions: <BottomSheetAction>[
                    BottomSheetAction(
                      trailing: const Icon(Icons.maximize),
                      leading: const Icon(Icons.add),
                      title: const Center(child: Text('Item 1',style: TextStyle(fontSize: 15),)),
                      onPressed: (_) {
                        Navigator.pop(context);
                      },
                    ),
                    BottomSheetAction(
                      trailing: const Icon(Icons.maximize),
                      leading: const Icon(Icons.add),
                      title: const Center(child: Text('Item 2',style: TextStyle(fontSize: 15))),
                      onPressed: (_) {
                        Navigator.pop(context);
                      },
                    ),
                    BottomSheetAction(
                      trailing: const Icon(Icons.maximize),
                      leading: const Icon(Icons.add),
                      title: const Center(child: Text('Item 3',style: TextStyle(fontSize: 15))),
                      onPressed: (_) {
                        Navigator.pop(context);
                      },
                    ),
                    BottomSheetAction(
                      trailing: const Icon(Icons.maximize),
                      leading: const Icon(Icons.add),
                      title: const Center(child: Text('Item 4',style: TextStyle(fontSize: 15))),
                      onPressed: (_) {
                        Navigator.pop(context);
                      },
                    ),
                    BottomSheetAction(
                      trailing: const Icon(Icons.maximize),
                      leading: const Icon(Icons.add),
                      title: const Center(child: Text('Item 5',style: TextStyle(fontSize: 15))),
                      onPressed: (_) {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                  cancelAction: CancelAction(title: const Text('Cancel',style: TextStyle(color: Colors.green),)),
                );
              },
              child: const Text('Show action sheet'),
            ),
          ],
        ),
      ),
    );
  }
}