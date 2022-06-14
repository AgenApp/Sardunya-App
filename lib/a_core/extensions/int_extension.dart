extension IntExtension on int{
// return : how much there hour inside the number  (137) => 2; 
  int asHour(){
    int result = this ~/60;
    return result;
  }
// return : how much there minute inside the number as a remainder  (137) => 17; 
  int asMinute(){
    int result = this %60;
    return result;
  }
}