import 'package:http/http.dart';

void main() async {
  await fetchRecipes();
  print("///////Fim!!////////");
}

Future<void> fetchRecipes() async {
  String url =
      'https://gist.githubusercontent.com/romulolucindo/c2ff14c443e188b4bf4f564293a794e0/raw/ad63a008aa499c3276b522a78107a853eff9686d/recipes.json';
  Uri uri = Uri.parse(url);
  Response response = await get(uri);
  print(response.body);
}
