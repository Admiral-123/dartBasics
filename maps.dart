// maps work in key:value way

void main() {
  var score = {'steve': 40, 'jos': 51, 'samson': 64, 'ash': 32};

  print(score['jos']);
  // print(score['xyz']); // will give null

  score['samson'] = 67; // can override values of the keys
  print(score['samson']);

  score['alex'] = 12; // create new key:val pair in the map
  print(score);

  print('');

  // another way to declare map

  var phoneUser = Map();

  phoneUser['jimmy'] = 'galaxy';
  phoneUser['alice'] = 'pixel';
  phoneUser['mitchel'] = 'iPhone';
  phoneUser['dan'] = 'xperia';
  phoneUser['chris'] = 'nokia';

  print(phoneUser.isNotEmpty);
  print(phoneUser.length); // num of key:val pairs
  print(phoneUser.keys); // shows all the keys
  print(phoneUser.values); // show all the val.
  print(phoneUser.containsKey('dan'));
  print(phoneUser.containsValue('oppo'));
  print(phoneUser.remove('mitchel')); // remove the key
  print(phoneUser);
}
