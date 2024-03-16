
//دي الداتا الراجعه من البوستمان
 class Character{
  late int charId;  //انا بديهو اسم
  late String name;
  late String nickName;
  late String image;
  late List <dynamic> jobs;   // >of
  late String statusIfDeadOrAlive;
  late List<dynamic>appearanceOfScreens;
  late String actorName;
  late String categoryForTwoSeries;
  late List<dynamic>betterCallSaulAppearance;
  Character.fromJson(Map<String, dynamic> json){
    charId=json[''];//"الاسم من بوست مان"
    name=json[''];
    nickName=json[''];
    image=json[''];
    jobs=json[''];
    statusIfDeadOrAlive=json[''];
    appearanceOfScreens=json[''];
    actorName=json[''];
    categoryForTwoSeries=json[''];
    betterCallSaulAppearance=json[''];
  }


 }