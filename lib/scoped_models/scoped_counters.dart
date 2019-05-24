import 'package:scoped_model/scoped_model.dart';
import '../models/counter.dart';
class ScopedCounter extends Model {
  Counter counter1 = Counter();
  Counter counter2 = Counter();
  Counter counter3 = Counter();

  increment() {
    print(counter1.count);
    print('++++++++++++++++++++++');
    print(counter2.count);
    print('++++++++++++++++++++++++');
    print(counter3.count);
    counter1.count += 1;
    counter2.count += 5;
    counter3.count += 10;

    notifyListeners();
  }
}