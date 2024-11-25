import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints{
static  String downloads = "$baseUrl/trending/movie/day?api_key=$apiKey";
static String searchs="$baseUrl/search/movie?api_key=$apiKey&query=spiderman";
static  String home = "$baseUrl/trending/movie/day?api_key=$apiKey";
static  String fastlaughs = "$baseUrl/movie/now_playing?api_key=$apiKey";
static  String vedios = "https://api.pexels.com/videos/popular?per_page=1";

static  String screen = "https://reqres.in/api/users";

}