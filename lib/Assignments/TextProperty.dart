import 'package:flutter/material.dart';


class TextPropeties extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TextPropeties> {
//For Size
  double _fontSize = 50;
    void increaseFontSize() {
    setState(() {
      _fontSize = _fontSize+10;
    });
  }
   
  double _height = 1;
    void height() {
    setState(() {
      _height = _height+1;
    });
  }
    double _wordSpacing = 1;
    void wordSapcing() {
    setState(() {
      _wordSpacing = _wordSpacing+1;
    });
  }
   double _letterSapcing = 1;
    void letterSapcing() {
    setState(() {
      _letterSapcing = _letterSapcing+1;
    });
  }
  

 Shadow _shadow =  Shadow(blurRadius: 10.0,color: Colors.blue);
  
  void shadow() {
    setState(() {
      _shadow = Shadow(blurRadius: 10.0,color: Colors.blue);
    });
  }
  //For BackGround Colors
Color _backgroundcolor = Colors.transparent;
  
  void backgroundcolor() {
    setState(() {
      _backgroundcolor = Colors.green;
    });
  }
//For Colors
Color _color = Colors.black;
  
  void colorchange() {
    setState(() {
      _color = Colors.red;
    });
  }
//For underline
  TextDecoration _underline = TextDecoration.none;
  void underline() {
    setState(() {
      _underline = TextDecoration.combine(
       [ TextDecoration.underline,TextDecoration.overline]) ;
    });
  }
  
    FontStyle _italic = FontStyle.normal;
  void italic() {
    setState(() {
      _italic = FontStyle.italic;
    });
  } 
  


  FontWeight _fontWeight = FontWeight.normal;
  void fontWeight() 
  {
    setState(() {
      _fontWeight = FontWeight.bold;
    });
  }
  
  TextAlign _textAlign = TextAlign.end;
  void textAlign() {
    setState(() {
      _textAlign = TextAlign.left;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Flutter')),
      ),
      body: Container(
        
        child: Column(children: [
          Column(children: [
            Text(
              'Change Me !',  textAlign:_textAlign,
               style: TextStyle(
               fontSize: _fontSize,
               color: _color,
               decoration: _underline,
               fontWeight : _fontWeight,
               fontStyle: _italic,
               height: _height,
               backgroundColor: _backgroundcolor,
                 wordSpacing: _wordSpacing,
                 letterSpacing: _letterSapcing,
                 
      //shadows: _shadow 
               
               
                          ),
            ),
          ]),
           Divider(
            height: 20,
             color:Colors.amber,
            ),
          Container(child:Text("TextStyle Properties")),
         Divider(
            height: 20,
             color:Colors.amber,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
            Row(children: [
//                  ElevatedButton(
//                 onPressed: ()  {
//                  setState(() {
//       _fontWeight = FontWeight.bold;
//     });
//                  },
//                 child: Text('Font Size'),
//               ),
              ElevatedButton(
                onPressed: () => {
                  increaseFontSize()
                 },
                child: Text('Font Size'),
              ),
            ]),
            Row(children: [
              ElevatedButton(
                
                onPressed: ()  =>
                {
                  colorchange()
                  },
                child: Text('Color '),  
                           ),
            ]),
                   Row(children: [
              ElevatedButton(
                
                onPressed: ()  =>
                {
                  shadow()
                  },
                child: Text('Shadow '),  
                           ),
            ]),
                 Row(children: [
              ElevatedButton(
                
                onPressed: ()  =>
                {
                  height()
                  },
                child: Text('Height '),  
                           ),
            ]),
                 
          ]),
          Divider(height:4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
            Row(children: [
//                  ElevatedButton(
//                 onPressed: ()  {
//                  setState(() {
//       _fontWeight = FontWeight.bold;
//     });
//                  },
//                 child: Text('Font Size'),
//               ),
              ElevatedButton(
                onPressed: () => {
                  wordSapcing()
                 },
                child: Text('WordSpacing'),
              ),
            ]),
            Row(children: [
              ElevatedButton(
                
                onPressed: ()  =>
                {
                  letterSapcing()
                  },
                child: Text('LetterSapcing '),  
                           ),
            ]),
                   
                  Row(children: [
              ElevatedButton(
                
                onPressed: ()  =>
                {
                  backgroundcolor()
                  },
                child: Text('BackGround Color'),  
                           ),
            ]),
          
                  Row(children: [
              ElevatedButton(
                onPressed: () => {fontWeight()},
                child: Text('Fontweigh (Bold)'),
              ),
            ]),
                  Row(children: [
              ElevatedButton(
                onPressed: () => {italic()},
                child: Text('FontStyle (Italic)'), 
              ),
            ]),
          ]),
           Divider(
            height: 20,
             color:Colors.amber,
            ),
       Container(child:Text("TextStyle Decoration Properties")),
          Divider(
            height: 20,
             color:Colors.amber,
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                  Row(children: [
              ElevatedButton(
                onPressed: () => {underline()},
                child: Text('Decoration (Underline)'),
              ),
            ]),
            Row(children: [
//                  ElevatedButton(
//                 onPressed: ()  {
//                  setState(() {
//       _fontWeight = FontWeight.bold;
//     });
//                  },
//                 child: Text('Font Size'),
//               ),
              ElevatedButton(
                onPressed: () => {
             
                 },
                child: Text('Decoration (Color)'),
              ),
            ]),
            Row(children: [
              ElevatedButton(
                
                onPressed: ()  =>
                {
                 
                  },
                child: Text('Decoration Style (Dashed Line)'),  
                           ),
            ]),
          
                
          ]),
        
      Divider(
            height: 20,
             color:Colors.amber,),
            Container(child:Text("Text Properties are")),
        Divider(
            height: 20,
             color:Colors.amber,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          
            Row(children: [
              
                ElevatedButton(
                onPressed: () => {textAlign()},
                child: Text('TextAlignment'),
              ),
            
            ]),
             Row(children: [
              
                ElevatedButton(
                onPressed: () => {textAlign()},
                child: Text('TextDirection'),
              ),
            
            ]),
              Row(children: [
              
                ElevatedButton(
                onPressed: () => {textAlign()},
                child: Text('TextScaleFactor'),
              ),
            
            ]),
             Row(children: [
              
                ElevatedButton(
                onPressed: () => {textAlign()},
                child: Text('SoftWrap'),
              ),
            
            ]),
             Row(children: [
              
                ElevatedButton(
                onPressed: () => {textAlign()},
                child: Text('OverFlow'),
              ),
            
            ]), 
            Row(children: [
              
                ElevatedButton(
                onPressed: () => {textAlign()},
                child: Text('Maxline'),
              ),
            
            ]),
          ]),
        ]),
      ),
          
    ));
  }
}