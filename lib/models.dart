
class Audit {
  final String changedBy;
  final String newStatus;
  final String previousStatus;
  final String reason;
  final DateTime timestamp;
  final String transactionId;
  final String transactionType;

  Audit({
    required this.changedBy,
    required this.newStatus,
    required this.previousStatus,
    required this.reason,
    required this.timestamp,
    required this.transactionId,
    required this.transactionType,
  });

  factory Audit.fromJson(Map<String, dynamic> json) {
    return Audit(
      changedBy: json['changedBy'],
      newStatus: json['newStatus'],
      previousStatus: json['previousStatus'],
      reason: json['reason'],
      timestamp: DateTime.parse(json['timestamp']),
      transactionId: json['transactionId'],
      transactionType: json['transactionType'],
    );
  }
}

class LicenciaPorFecha {
  final DateTime fecha;
  final int cantidad;

  LicenciaPorFecha({required this.fecha, required this.cantidad});

  factory LicenciaPorFecha.fromJson(Map<String, dynamic> json) {
    return LicenciaPorFecha(
      fecha: DateTime.parse(json['fecha']),
      cantidad: json['cantidad'],
    );
  }
}

class EstadosLotes {
  final int libres;
  final int conDueno;
  final int enVenta;

  EstadosLotes({
    required this.libres,
    required this.conDueno,
    required this.enVenta,
  });

  factory EstadosLotes.fromJson(Map<String, dynamic> json) {
    return EstadosLotes(
      libres: json['libres'],
      conDueno: json['conDueno'],
      enVenta: json['enVenta'],
    );
  }
}

class PlayersStripe {
  final int con;
  final int sin;

  PlayersStripe({required this.con, required this.sin});

  factory PlayersStripe.fromJson(Map<String, dynamic> json) {
    return PlayersStripe(
      con: json['con'],
      sin: json['sin'],
    );
  }
}

class LicenciasActivas {
  final int activas;
  final int noActivas;
  final int pendientes;

  LicenciasActivas({
    required this.activas,
    required this.noActivas,
    required this.pendientes,
  });

  factory LicenciasActivas.fromJson(Map<String, dynamic> json) {
    return LicenciasActivas(
      activas: json['activas'],
      noActivas: json['noActivas'],
      pendientes: json['pendientes'],
    );
  }
}

class ComprasCompletadas {
  final Pastel pastel;
  final List<Linea> lineas;

  ComprasCompletadas({required this.pastel, required this.lineas});

  factory ComprasCompletadas.fromJson(Map<String, dynamic> json) {
    return ComprasCompletadas(
      pastel: Pastel.fromJson(json['pastel']),
      lineas: (json['lineas'] as List).map((i) => Linea.fromJson(i)).toList(),
    );
  }
}

class Pastel {
  final int completadas;
  final int noCompletadas;

  Pastel({required this.completadas, required this.noCompletadas});

  factory Pastel.fromJson(Map<String, dynamic> json) {
    return Pastel(
      completadas: json['completadas'],
      noCompletadas: json['noCompletadas'],
    );
  }
}

class Linea {
  final DateTime fecha;
  final int completadas;
  final int noCompletadas;

  Linea({
    required this.fecha,
    required this.completadas,
    required this.noCompletadas,
  });

  factory Linea.fromJson(Map<String, dynamic> json) {
    return Linea(
      fecha: DateTime.parse(json['fecha']),
      completadas: json['completadas'],
      noCompletadas: json['noCompletadas'],
    );
  }
}
