import 'RestApis.dart';

import '../main.dart';
import '../utils/Extensions/common.dart';

getAllCountryApiCall() async {
  await getCountryList().then((value) {
    appStore.stateList.clear();
    appStore.stateList.addAll(value.data!);
  }).catchError((error) {
    toast(error.toString());
  });
}
