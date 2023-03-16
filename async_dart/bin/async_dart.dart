

import 'dart:convert';
import 'dart:io';

void main() {
  printNickname();
}

getFile () async {
  var client = HttpClient();
  try {
    HttpClientRequest request = await client.getUrl(Uri.parse('https://mafbase.ru/api/availablePlayers'));
    request.headers.set("accept", "application/json");
    HttpClientResponse response = await request.close();  
    final String jsonData = await response.transform(utf8.decoder).join();
    return jsonData;
    //print(jsonData);
  } catch (error) {
    print(error);
  } 
  finally {
    client.close();
}
}

printNickname() async {
  
  final String jsonData = await getFile();
  
  var arrayOfPlayers = jsonDecode(jsonData);

  for (var i in arrayOfPlayers['players']) {
    print(i['nickname']);
  }
  
  //print(jsonData['nickname']);
}
