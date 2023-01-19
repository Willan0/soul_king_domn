extension AddS on String{
  String getComment(int length){
    if(isEmpty){
      return "Error";
    }
    if(length==1){
      return "$length comment";
    }
    return "$length comments";
  }
}