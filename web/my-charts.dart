import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Here is how much people like the menu ！';

  var myData = JsObject.jsify([
    {'menu': '板栗炖鸡', 'number': 6},
    {'menu': '虾仁滑蛋', 'number': 2},
    {'menu': '番茄牛腩', 'number': 4},
    {'menu': '豉汁排骨', 'number': 8},
    {'menu': '芝士虾球', 'number': 10},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
