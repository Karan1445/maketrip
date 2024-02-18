

import 'package:flutter/material.dart';
import 'package:maketrip/screen_2.dart';
import 'package:maketrip/screen_3.dart';
class Home extends StatelessWidget{
  const Home({super.key});
  Widget build(BuildContext context){
    return Scaffold(

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10,top:15,bottom: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/8373748.png",
                        width: 35,
                      ),
                      Expanded(child: Container()),
                      const CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage("assets/images/user_img.jpg"),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(margin:EdgeInsets.only(left: 18),child: Text("Go With Me.",style: TextStyle(color:Colors.purple,fontSize: 29,fontWeight: FontWeight.w500),)),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      first_Scroll(context,"assets/images/screen2_new4.jpg","Rigi Mountains For Everyone,With\nSpecial Blue Sky","Lugano ,Switzerland"),
                      first_Scroll(context,"assets/images/screen2_new8.jpg","Holiday For Family in Matterhorn\nmountain","Lugano ,Switzerland"),
                      first_Scroll(context,"assets/images/screen2_new6.jpg","Holiday For Family in Matterhorn\nmountain","Lugano ,Switzerland")
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.only(left:20,right: 25,top:15,bottom: 5),
                  child:     Row(
                    children: [
                      const Text("Make Your Own Journy?",style: TextStyle(color: Colors.purple,fontSize: 18),),
                      Expanded(child: Container()),
                      GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));},child: const Text("View all",style: TextStyle(color: Colors.grey,fontSize:8),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Container(margin: const EdgeInsets.only(left: 20,right:20,top:10,bottom: 10),
                    child: Row(
                      children: [
                        icon_Col(0xe3a8,"City",st:0),
                        icon_Col(0xe365,"Mountains"),
                        icon_Col(0xe0d6,"Beaches"),
                        icon_Col(0xe414,"Musum"),
                        icon_Col(0xf7f1,"Tants"),
                        icon_Col(0xf056b,"snow",en:0),
                      ],
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left:20,right: 25,top:5,bottom: 10),
                  child:     Row(
                    children: [
                      const Text("Promo",style: TextStyle(color: Colors.purple,fontSize: 18),),
                      Expanded(child: Container()),
                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));},child: const Text("View all",style: TextStyle(color: Colors.grey,fontSize:8),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      first_Scroll(context, "assets/images/home_1.jpg", "Make it Even in nigh\nMore beutiful", "Gujrat , India",wid_div: 2.1,flag: true),
                      first_Scroll(context, "assets/images/home_2.jpg", "Make it Even in sun\nMore beutiful", "Gujrat , India",wid_div:2.1,flag:true,color_t: Colors.redAccent.shade400,txt: "70"),
                      first_Scroll(context, "assets/images/home_4.jpg", "Make it Even in evening\nMore beutiful", "Gujrat , India",wid_div:2.1,flag:true,txt:"20")
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );

  }

  Container icon_Col(int icon_d,String under_text,{int to=13,int bo=13,int st=13,int en=13}) {
    return Container(margin: EdgeInsets.only(top: to as double,bottom: bo as double,left:st as double,right: en as double),
      child: Column(
        children: [
          Icon(IconData(icon_d, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
          Text(under_text,style: TextStyle(color: Colors.grey,fontSize: 8),)
        ],
      ),
    );
  }

  Stack first_Scroll(BuildContext context,String img_path,
      String f_text,String loc_text,{double wid_div=1.9,Color color_t=Colors.purple,String txt="40",bool flag=false}) {
    return Stack(
      children: [
        Container(margin: EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23)
          ),

          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3(Path: img_path )));
            },
            child: Image.asset(img_path,
                fit: BoxFit.cover,height: 280,width: MediaQuery.of(context).size.width/wid_div),
          ),
        ),
        off_tag(context, wid_div, color_t, txt,flag),
        Container(margin: EdgeInsets.only(top: 220,left: 40),
          child:  Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(f_text,style: TextStyle(color: Colors.white,fontSize: 10),),
                  buildRow(loc_text),
                ],
              ),





            ],
          ),
        ),

      ],
    );
  }

  Row off_tag(BuildContext context, double wid_div, Color color_t, String txt,bool flag) {
    if(flag){
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/wid_div-57,top:20),
            color: color_t,
            child: Text("$txt% OFF",style: TextStyle(color:Colors.white),),
          ),
        ],
      );
    }
    else return Row(children: [],);
  }

  Widget buildRow(String loc_text) {
    return   Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
            color: Colors.purple,size: 11),
        Text(
          loc_text,
          style: const TextStyle(
              color: Colors.purple, fontWeight: FontWeight.w500,fontSize: 11),
        ),
      ],
    );
  }
}
