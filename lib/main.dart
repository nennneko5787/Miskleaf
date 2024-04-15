import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});
	static const String _title = 'Miskleaf';
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: _title,
			theme: ThemeData(
				// useMaterial3: false,
				primarySwatch: Colors.blue,
			),
			home: const MyHomePage(),
		);
	}
}

class MyHomePage extends StatefulWidget {
	const MyHomePage({super.key});
	// This widget is the home page of your application. It is stateful, meaning
	// that it has a State object (defined below) that contains fields that affect
	// how it looks.
	// This class is the configuration for the state.
	@override
	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	int _counter = 0;

	void _incrementCounter() {
		setState(() {
			// This call to setState tells the Flutter framework that something has
			// changed in this State, which causes it to rerun the build method below
			// so that the display can reflect the updated values. If we changed
			// _counter without calling setState(), then the build method would not be
			// called again, and so nothing would appear to happen.
			_counter++;
		});
	}

	@override
	Widget build(BuildContext context) {
		// This method is rerun every time setState is called, for instance as done
		// by the _incrementCounter method above.
		//
		// The Flutter framework has been optimized to make rerunning build methods
		// fast, so that you can just rebuild anything that needs updating rather
		// than having to individually change instances of widgets.
		return Scaffold(
			appBar: AppBar(
				title: const Text('Miskleaf'),
				leading: Builder(
				builder: (BuildContext context) {
					return IconButton(
					icon: CircleAvatar(
						backgroundImage: NetworkImage('https://misskey.nukumori-sky.net/proxy/avatar.webp?url=https%3A%2F%2Fs3.nukumori-sky.net%2Ffiles%2Fwebpublic-1888d496-02fc-41ee-986d-407a74c0e50b.png&amp;avatar=1'),
						backgroundColor: Colors.transparent,
						radius: 20,
					),
					onPressed: () {
						Scaffold.of(context).openDrawer(); // Drawerを開く
					},
					);
				},
				),
				actions: [],
			),
			drawer: Drawer(
				child: ListView(
					padding: EdgeInsets.zero,
					children: [
						UserAccountsDrawerHeader(
							accountName: Container(
								decoration: BoxDecoration(
									color: Colors.black.withOpacity(0.5), // 背景色を青色に設定
									borderRadius: BorderRadius.circular(10), // ボーダーの角を丸める
								),
								padding: EdgeInsets.all(4), // テキストの周囲にパディングを追加
								child: Text(
									'ねんねこ',
									style: TextStyle(
										color: Colors.white, // テキストの色を白色に設定
									),
								),
							),
							accountEmail: Container(
								decoration: BoxDecoration(
									color: Colors.black.withOpacity(0.5), // 背景色を青色に設定
									borderRadius: BorderRadius.circular(10), // ボーダーの角を丸める
								),
								padding: EdgeInsets.all(4), // テキストの周囲にパディングを追加
								child: Text(
									'@nennneko5787@nukumori-sky.net',
									style: TextStyle(
										color: Colors.white, // テキストの色を白色に設定
									),
								),
							),
							currentAccountPicture: CircleAvatar(
								backgroundImage: NetworkImage('https://misskey.nukumori-sky.net/proxy/avatar.webp?url=https%3A%2F%2Fs3.nukumori-sky.net%2Ffiles%2Fwebpublic-1888d496-02fc-41ee-986d-407a74c0e50b.png&amp;avatar=1'),
							),
							decoration: BoxDecoration(
								image: DecorationImage(
									image: NetworkImage('https://s3.nukumori-sky.net/files/webpublic-739f9d3e-487f-464a-adcd-40862a8c2c46.png'),
									fit: BoxFit.cover,
								),
							),
						),
						ListTile(
							title: Text('プロフィール'),
							onTap: () {
								// タップされた時の処理
							},
						),
						ListTile(
							title: Text('通知'),
							onTap: () {
								// タップされたときの処理
							},
						),
						ListTile(
							title: Text('クリップ'),
							onTap: () {
								// タップされた時の処理
							},
						),
						ListTile(
							title: Text('ドライブ'),
							onTap: () {
								// タップされた時の処理
							},
						),
						Divider(),
						ListTile(
							title: Text('みつける'),
							onTap: () {
								// タップされた時の処理
							},
						),
						ListTile(
							title: Text('お知らせ'),
							onTap: () {
								// タップされた時の処理
							},
						),
						ListTile(
							title: Text('検索'),
							onTap: () {
								// タップされた時の処理
							},
						),
						Divider(),
						ListTile(
							title: Text('設定'),
							onTap: () {
								// タップされた時の処理
							},
						),
						// 他のリストアイテムを追加できます
					],
				),
			),
			body: Center(
				// 中央に配置
				child: Column(
					// 縦方向に整列
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						const Text(
						'あなたは何度もボタンを押した：',
						),
						Text(
						'$_counter',
						style: const TextStyle(fontSize: 25),
						),
					],
				),
			),
			floatingActionButton: FloatingActionButton(
				onPressed: _incrementCounter,
				tooltip: '増やす',
				child: const Icon(Icons.add),
			),
		);
	}
}
