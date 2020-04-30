import 'package:flutter/material.dart';

class ArticlesFull extends StatelessWidget{
  ArticlesFull({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context){
    var card = ListView(
      
      children: <Widget>[
    Container(
      child: Card(
      
       child: InkWell(
         splashColor: Colors.blue.withAlpha(40),
         child: ListTile(
           title: Text("If You’re a Student Who’s Struggling With Mental Health, These 7 Tips Will Help"),
           
           subtitle: Text("Adjusting to college life — whether you’re a freshman or a returning senior — is stressful, as change often is. But stress, surprisingly, can actually benefit your well-being, says family psychologist B. Janet Hibbs, Ph.D., who co-authored The Stressed Years of Their Lives: Helping Your Kid Survive and Thrive During Their College Years with Anthony Rostain, M.D., professor of psychiatry and pediatrics at the University of Pennsylvania’s Perelman School of Medicine. “A certain amount of stress and anxiety is good for us and motivates us to prepare for tests, begin and complete assignments, and get on with ‘adulting,'” she says. But there’s another kind that’s unhealthy, and it’s been ravaging the mental well-being of college students across the country in ever-increasing numbers since 2010. She calls it “The sky is falling” anxiety. It feels catastrophic and requires intervention. Signs to look for: “You will likely feel more irritable and have trouble sleeping and concentrating,” explains Hibbs. This type of anxiety, “if it’s chronic, severe and untreated,” says Hibbs, can spiral into depression, which has also skyrocketed since 2010, with 1 in 5 college students reporting thoughts of suicide.\n As our reporting on the crisis of understaffed, overtaxed, and underprepared mental facilities across college campuses shows, it may not be possible to get a quick and recurring appointment to manage your mental health needs, but today, less stigma and greater awareness has improved and expanded resources for college students on campus, says Ben Locke, Ph.D., senior director of Counseling and Psychological Services at Penn State and the executive director of the Center for Collegiate Mental Health. Here’s how to make the most of them, and other tactics to set up your college years for success."),
           
         ),
         
       ),
       
      ),
      
      
    ),
    
    ],
    
    );
    return Scaffold(
      body: card,
    );
    
  }
}