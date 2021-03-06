// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definition.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$MyService extends MyService {
  _$MyService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = MyService;

  Future<Response> getResource(String id) {
    final $url = '/resources/$id';
    final $request = new Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response<Map>> getMapResource(String id) {
    final $url = '/resources/';
    final Map<String, dynamic> $params = {'id': id};
    final $headers = {'foo': 'bar'};
    final $request = new Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<Map, Map>($request);
  }

  Future<Response<List<Map>>> getListResources() {
    final $url = '/resources/resources';
    final $request = new Request('GET', $url, client.baseUrl);
    return client.send<List<Map>, Map>($request);
  }

  Future<Response> postResourceUrlEncoded(String toto, String b) {
    final $url = '/resources/';
    final $body = {'a': toto, 'b': b};
    final $request = new Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> postResources(Map a, Map b, String c) {
    final $url = '/resources/multi';
    final $parts = [
      new PartValue<Map>('1', a),
      new PartValue<Map>('2', b),
      new PartValue<String>('3', c)
    ];
    final $request = new Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> postFile(List<int> bytes) {
    final $url = '/resources/file';
    final $parts = [new PartFile<List<int>>('file', bytes)];
    final $request = new Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }
}
