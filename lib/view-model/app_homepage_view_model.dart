import 'package:mvvm_example/model/counter_model.dart';

class AppHomePageViewModel {
  // NB: Getting the instance of all the class Model
  var counterModel = CounterModel();

  // NB: All datas that the App home page need will be here
  String appTitle = 'Flutter MVVM Project';
  String subTitle = 'Counter App';

  // NB: All business logic that the App home page need will be here.
  // initial value of the counter using get method.
  getCounterValue() {
    return counterModel.counter;
  }

  // increase the counter value
  increaseCounter() {
    
    return counterModel.counter++;
  }

  // decrease the counter value
  decreaseCounter() {
    return counterModel.counter--;
  }
}
