class AresAttachment {
  final String id;
  final String url;

  AresAttachment({required this.id, required this.url});

  factory AresAttachment.fromJson(Map<String, dynamic> json) {
    return AresAttachment(
      id: json['id'],
      url: json['url'],
    );
  }
}

class AresDataset {
  final String datasetId;
  final List<AresAttachment> urls;

  AresDataset({required this.datasetId, required this.urls});

  factory AresDataset.fromJson(Map<String, dynamic> json) {
    var urlList = json['urls'] as List;
    List<AresAttachment> urls = urlList.map((i) => AresAttachment.fromJson(i)).toList();
    
    return AresDataset(
      datasetId: json['dataset_id'],
      urls: urls,
    );
  }
}

class AresDatasetArray {
  final List<AresDataset> results;
  final int count;
  final int statusCode;

  AresDatasetArray({required this.results, required this.count, required this.statusCode});

  factory AresDatasetArray.fromJson(Map<String, dynamic> json) {
    var resultList = json['results'] as List;
    List<AresDataset> results = resultList.map((i) => AresDataset.fromJson(i)).toList();
    
    return AresDatasetArray(
      results: results,
      count: json['count'],
      statusCode: json['statusCode'],
    );
  }
}
