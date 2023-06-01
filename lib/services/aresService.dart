import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mywayf/models/aresdataset.dart';

class AresService {
  final String apiUrl = 'https://mywayexpress-production.up.railway.app/api/'; // Remplacez par votre URL d'API

  Future<List<AresDataset>> getAresDatasets() async {
    final response = await http.get(Uri.parse('${apiUrl}ares/dataset'));

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => AresDataset.fromJson(item)).toList();

    } else {
      throw Exception('Failed to load AresDatasetArray');
    }
  }

  Future<dynamic> getAresDomaines() async {
    final response = await http.get(Uri.parse('${apiUrl}ares/domaine'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load AresDomaineArray');
    }
  }

  Future<dynamic> getAresGrades() async {
    final response = await http.get(Uri.parse('${apiUrl}ares/grade'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load AresGradeArray');
    }
  }

  Future<dynamic> getAresPasserelles() async {
    final response = await http.get(Uri.parse('${apiUrl}ares/passerelle'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load AresPasserelleArray');
    }
  }

  Future<dynamic> getAresInstitutions() async {
    final response = await http.get(Uri.parse('${apiUrl}ares/institution'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load AresInstitutionArray');
    }
  }
}
