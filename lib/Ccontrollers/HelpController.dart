import 'package:url_launcher/url_launcher_string.dart';

Future<void> askQuestionOnWhatsapp() async {
  const number = '+923112709619';
  final message = "Hello wahab \n I want to know about my order }";

  final url = 'https://wa.me/$number?text=${Uri.encodeComponent(message)}';
  try {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw "Could not launch $url";
    }
  } catch (e) {
    // print("Error: $e");
  }
}