// home_page.dart
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const CircleAvatar(
        backgroundImage: NetworkImage('https://s3.nukumori-sky.net/files/441ba489-5484-471a-a240-e8cb539a4523.png'),
        backgroundColor: Colors.transparent,
        radius: 20,
      ),
      leading: IconButton(
        icon: CircleAvatar(
          backgroundImage: NetworkImage('https://misskey.nukumori-sky.net/proxy/avatar.webp?url=https%3A%2F%2Fs3.nukumori-sky.net%2Ffiles%2Fwebpublic-1888d496-02fc-41ee-986d-407a74c0e50b.png&amp;avatar=1'),
          backgroundColor: Colors.transparent,
          radius: 20,
        ),
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer(); // Drawerを開く
        },
      ),
      actions: [],
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
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
                '@nennneko5787@misskey.nukumori-sky.net',
                style: TextStyle(
                  fontSize: 8,
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
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage('https://misskey.nukumori-sky.net/proxy/avatar.webp?url=https%3A%2F%2Fs3.nukumori-sky.net%2Ffiles%2Fwebpublic-1888d496-02fc-41ee-986d-407a74c0e50b.png&amp;avatar=1'),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'nennneko5787',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '@nennneko5787',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'これはテストメッセージっス！',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  // コメントアクション
                },
              ),
              IconButton(
                icon: Icon(Icons.repeat),
                onPressed: () {
                  // リツイートアクション
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  // いいねアクション
                },
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // 共有アクション
                },
              ),
            ],
          ),
        ],
      ),
    );

    /*
  Widget _buildBody() {
    return ListView.builder(
      itemCount: _posts?.length, // ポストの数
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(_posts?[index]['avatarUrl']), // ユーザーのアバターURLを使用
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _posts?[index]['username'], // ユーザー名を使用
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@${_posts?[index]['username']}', // ユーザーのハンドル名を使用
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                _posts?[index]['message'], // ツイートのメッセージを使用
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      // コメントアクション
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.repeat),
                    onPressed: () {
                      // リツイートアクション
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      // いいねアクション
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // 共有アクション
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
    */
  }
}
