import 'package:flutter_newsapp/Models/categories_news_models.dart';
import 'package:flutter_newsapp/Models/new_channel_headlines_model.dart';
import 'package:flutter_newsapp/repositiary/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();
  Future<NewsChannelsHeadlinesModel> fetchNewsChanelHeadlinesapi(
      String name) async {
    final response = await _rep.fetchNewsChannelHeadlinesApi(name);
    return response;
  }

  Future<CategoeriesNewsModel> fetchCategoriesNews(String name) async {
    final response = await _rep.fetchCategoriesNews(name);
    return response;
  }
}
