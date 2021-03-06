// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_serializable.dart';

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
    final $url = '/resources/$id/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response<List<Resource>>> getResources() {
    final $url = '/resources/all';
    final $headers = {'test': 'list'};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<List<Resource>, Resource>($request);
  }

  Future<Response<Map>> getMapResource(String id) {
    final $url = '/resources/';
    final $params = {'id': '$id'};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Map, Map>($request);
  }

  Future<Response<Resource>> getTypedResource() {
    final $url = '/resources/';
    final $headers = {'foo': 'bar'};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<Resource, Resource>($request);
  }

  Future<Response<Resource>> newResource(Resource resource, {String name}) {
    final $url = '/resources/';
    final $headers = {'name': name};
    final $body = resource;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Resource, Resource>($request);
  }
}
