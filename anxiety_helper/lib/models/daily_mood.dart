//use sql lite to make the files on  the users device
class DailyMood{
  String mood;

  DailyMood({this.mood});
  //print('here');
  void time() {
    var now = new DateTime.now();
    print(now);
  }

}