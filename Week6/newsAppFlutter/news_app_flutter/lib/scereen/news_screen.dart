import 'package:flutter/material.dart';
import 'package:news_app_flutter/services/news_api.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NewsApi api = NewsApi();

    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          api.fetchData();
        },
        child: Icon(Icons.download),
      ),

      body: FutureBuilder<List<dynamic>>(
        future: api.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error here.."));
          } else if (snapshot.hasData) {
            final newsList = snapshot.data;

            return ListView.builder(
              itemCount: newsList!.length,
              itemBuilder: (context, index) {
                final news = newsList[index];
                return Card(
                  child: ListTile(
                    leading: news['urlToImage'] != null
                        ? Image.network(
                            news['urlToImage'],
                            height: 100,
                            width: 80,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.broken_image,
                                size: 50,
                                color: Colors.grey,
                              );
                            },
                          )
                        : Icon(Icons.image),
                    title: Text(
                      news['title'] ?? "No title found",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      news['description'] ?? "No description",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text("No data!"));
          }
        },
      ),
    );
  }
}
