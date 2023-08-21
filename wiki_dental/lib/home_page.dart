import 'package:flutter/material.dart';
import 'package:wiki_dental/widgets/main_drawer.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
   
  
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MainDrawer() ,
      
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            
            title:Text(' Wibicki Family Dental', style: TextStyle(
              color: Color.fromARGB(255, 63, 188, 230)
            ),),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            ],
          ),


          SliverToBoxAdapter(
            child: Container(
              height: 400,
              color: const Color.fromARGB(255, 235, 227, 202),
            ),
          ),

          
          SliverToBoxAdapter(
            child: Container(
              height: 400,
              color: Color.fromARGB(255, 43, 42, 39),
            ),
          ),





        ],

      ),
    );
  }
}