class ThoughtModel {
  String text;
  int timeStamp;

  ThoughtModel({this.text, this.timeStamp});

  ThoughtModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    timeStamp = json['timeStamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['timeStamp'] = this.timeStamp;
    return data;
  }
}
