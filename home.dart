
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Home();

}
class _Home extends State<Home>{
  List nots=[
    {
     'note':"werytuyuhgdxghjjk 1",
    'imge':"https://1.bp.blogspot.com/-zqbXraWkG6s/Xpjmfc-ezLI/AAAAAAAAEOI/n1QoNYBdn7MALZ6o2orfwhAyTs7b7E8tgCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252839%2529.jpg",
     },
    {
      'note':"werytuyuhgdxghjjk 2",
      'imge':"https://1.bp.blogspot.com/-ce9gko1hnXo/XpjlCPCi4cI/AAAAAAAAELo/3FiLRFNV7GsjF-EU_GceezqSA1LJwfs0QCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252812%2529.jpg",
    },
    {
      'note':"werytuyuhgdxghjjk 3",
      'imge':"https://1.bp.blogspot.com/-5XLpZR02akM/Xpjm_PEdoRI/AAAAAAAAEPI/HOiGD2dkCSgGOD0TN9d2asyF0DVrzu77wCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252848%2529.jpg",
    },
    {
      'note':"werytuyuhgdxghjjk 4",
      'imge':"https://1.bp.blogspot.com/-rnLdWHCai9Y/Xpjljmk75wI/AAAAAAAAEMo/R90dOjuRfBc-HEc0YoAjmYKM3acES-ctACLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252826%2529.jpg",
    },
    {
      'note':"werytuyuhgdxghjjk 5",
      'imge':"https://1.bp.blogspot.com/-z5PmI0PIREU/Xpjlo8fQCvI/AAAAAAAAEMw/PY-me4R1EZwk-fWauH-g3ClSie_cwAKiQCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252827%2529.jpg",
    },
    {
      'note':"werytuyuhgdxghjjk 6",
      'imge':"https://1.bp.blogspot.com/-gdvQ7K5mnF8/XpjnAcqS0UI/AAAAAAAAEPQ/VnmG-Hiel8c2FaSvi2x0-htwC4salQqIQCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252849%2529.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(centerTitle: true,
         title: Text('Home Page'),backgroundColor: Theme.of(context).primaryColor),
       floatingActionButton:
       FloatingActionButton(onPressed: (){
         Navigator.of(context).pushNamed('Add');
       },child: Icon(Icons.add,),backgroundColor: Theme.of(context).primaryColor),
     body:Container(
           child: ListView.builder(
               itemCount: nots.length,
               itemBuilder:(context,i){
               return Dismissible(key: Key('$i'), child: listnotes(notes:nots[i],));},
         ),
         ),
        );
  }

}
class listnotes extends StatelessWidget{
 final notes;

 listnotes({this.notes});

  @override
  Widget build(BuildContext context) {
    return  Card(
          child:Row(children: [
              Expanded(
              flex: 1,
              child: Image.network('${notes['imge']}',fit: BoxFit.fill,)),
          Expanded(flex: 2,
          child: ListTile(
            title: Text('Title'),
           subtitle: Text("${notes['note']}"),
           trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit))),
          ),

   ]),

    );
 }

}