import 'package:fluttertoast/fluttertoast.dart';

// positional optional parameter with default value
toastInfo([String msg = ""]) {
  return Fluttertoast.showToast(msg: msg);
}
