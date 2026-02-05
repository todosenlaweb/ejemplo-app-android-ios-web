
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'models.dart';

class ApiService {
  final String _baseUrl = 'https://us-central1-g3p-ulop.cloudfunctions.net';

  Future<LicenciasActivas> getLicenciasActivas() async {
    final response = await http.get(Uri.parse('$_baseUrl/getLicenciasActivas'));
    if (response.statusCode == 200) {
      return LicenciasActivas.fromJson(json.decode(response.body)['licenciasActivas']);
    } else {
      throw Exception('Failed to load licencias activas');
    }
  }

  Future<PlayersStripe> getPlayersStripe() async {
    final response = await http.get(Uri.parse('$_baseUrl/getPlayersStripe'));
    if (response.statusCode == 200) {
      return PlayersStripe.fromJson(json.decode(response.body)['playersStripe']);
    } else {
      throw Exception('Failed to load players stripe');
    }
  }

  Future<List<LicenciaPorFecha>> getLicenciasPorFecha() async {
    final response = await http.get(Uri.parse('$_baseUrl/getLicenciasPorFecha'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['licenciasPorFecha'];
      return data.map((item) => LicenciaPorFecha.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load licencias por fecha');
    }
  }

  Future<EstadosLotes> getEstadosLotes() async {
    final response = await http.get(Uri.parse('$_baseUrl/getEstadosLotes'));
    if (response.statusCode == 200) {
      return EstadosLotes.fromJson(json.decode(response.body)['estadosLotes']);
    } else {
      throw Exception('Failed to load estados lotes');
    }
  }

  Future<ComprasCompletadas> getComprasCompletadas() async {
    final response = await http.get(Uri.parse('$_baseUrl/getComprasCompletadas'));
    if (response.statusCode == 200) {
      return ComprasCompletadas.fromJson(json.decode(response.body)['comprasCompletadas']);
    } else {
      throw Exception('Failed to load compras completadas');
    }
  }

  Future<List<Audit>> getAudits(String startDate, String endDate) async {
    final response = await http.get(Uri.parse('$_baseUrl/getAudits?startDate=$startDate&endDate=$endDate'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['audits'];
      return data.map((item) => Audit.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load audits');
    }
  }
}
