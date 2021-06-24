import 'dart:async';
enum OptionAction{
  selectedOption
}
class QuizBloc{
  final stateStreamController = StreamController<int>();
  StreamSink<int> get optionSink => stateStreamController.sink;
  Stream<int> get optionStream => stateStreamController.stream;

  final eventStreamController = StreamController<OptionAction>();
  StreamSink<OptionAction> get eventSink => eventStreamController.sink;
  Stream<OptionAction> get eventrStream => eventStreamController.stream;


QuizBloc(){
eventrStream.listen((event) async {
  if(event==OptionAction.selectedOption){

  }
});
}
}