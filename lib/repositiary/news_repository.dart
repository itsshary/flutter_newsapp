import 'dart:convert';

import 'package:flutter_newsapp/Models/categories_news_models.dart';
import 'package:flutter_newsapp/Models/new_channel_headlines_model.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  //must save in secure storage

  String url =
      'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=bdbc1d0dc0714712905d8e047231e491';

  Future<NewsChannelsHeadlinesModel> fetchNewsChanelHeadlinesapi() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(
      String newsChannel) async {
    String newsUrl =
        'https://newsapi.org/v2/top-headlines?sources=$newsChannel&apiKey=bdbc1d0dc0714712905d8e047231e491';

    final response = await http.get(Uri.parse(newsUrl));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }

  Future<CategoeriesNewsModel> fetchCategoriesNews(String category) async {
    String newsUrl =
        'https://newsapi.org/v2/everything?q=$category&apiKey=bdbc1d0dc0714712905d8e047231e491';

    final response = await http.get(Uri.parse(newsUrl));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CategoeriesNewsModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }
}
