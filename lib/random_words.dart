import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();

}

class RandomWordsState extends State<RandomWords>{
  //定义一个列表来保存WordPair,且该列表变量为私有的
  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>(); 
  final _biggerFont = const TextStyle(fontSize: 18);

  void _pushSaved(){

    Navigator.of(context).push(
        new MaterialPageRoute(builder: (context){
          final title =_saved.map((pair){
            return  new ListTile(
              title: new Text(pair.asPascalCase,style: _biggerFont,),
            );

          });
          final  divided = ListTile.divideTiles(tiles: title,context: context).toList();
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided,),
          );

        })
    );
  }

  Widget _buildRow(WordPair wordPair){
    final _alreadySaved = _saved.contains(wordPair);
    return new ListTile(
      title: new Text(wordPair.asPascalCase,style: _biggerFont,),
      trailing: new Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if(_alreadySaved){
            _saved.remove( wordPair);
          }else{
            _saved.add(wordPair);
          }
        });
      },
    );
  }

  Widget _buildSuggestion(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context,i){
        //如果i为奇数，创建一条线
        print(i);
        if(i.isOdd) return new Divider();

        final index = i ~/2;
        if (index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );

  }

  @override
  Widget build(BuildContext context) {

   // final wordPair =  new WordPair.random();
   // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter 第二天'),
        actions: <Widget>[new IconButton(onPressed: _pushSaved, icon: new Icon(Icons.list))],
      ),
      body: _buildSuggestion(),
    );
  }
  

}