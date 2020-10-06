import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset('imagens/app-logo.png'),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('imagens/user-picture.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white70,
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem2(),
            cardItem(),
            cardItem2(),
            cardItem(),
            cardItem2(),
          ],
        ),
      ),
    );
  }
}
Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/03/31/20/27/avatar-1295773_960_720.png"),
          ),
          title: Text("Dog Brincando"),
          subtitle: Text("06/10/2020"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("imagens/carinho.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child:
          Text("Criança brincando com cachorro, o melhor amigo do homem.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 16,
            ),
          ),
        ),
        // ignore: deprecated_member_use
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite),
                onPressed: () => {},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget cardItem2() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/04/01/12/11/avatar-1300582__340.png"),
          ),
          title: Text("Dog Passeando"),
          subtitle: Text("05/10/2020"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("imagens/passeando.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child:
          Text("Adestrador de cachorro passeando em SP, com vários cachorros de raça ao mesmo tempo.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
        ),
        // ignore: deprecated_member_use
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite),
                onPressed: () => {},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}