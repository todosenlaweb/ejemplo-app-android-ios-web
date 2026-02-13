import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'api_service.dart';
import 'models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<LicenciasActivas> _licenciasActivas;
  late Future<PlayersStripe> _playersStripe;
  late Future<List<LicenciaPorFecha>> _licenciasPorFecha;
  late Future<EstadosLotes> _estadosLotes;
  late Future<ComprasCompletadas> _comprasCompletadas;
  late Future<List<Audit>> _audits;

  DateTime _startDate = DateTime.now().subtract(const Duration(days: 7));
  DateTime _endDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    final apiService = ApiService();
    _licenciasActivas = apiService.getLicenciasActivas();
    _playersStripe = apiService.getPlayersStripe();
    _licenciasPorFecha = apiService.getLicenciasPorFecha();
    _estadosLotes = apiService.getEstadosLotes();
    _comprasCompletadas = apiService.getComprasCompletadas();
    _audits = apiService.getAudits(
      DateFormat('yyyy-MM-dd').format(_startDate),
      DateFormat('yyyy-MM-dd').format(_endDate),
    );
    setState(() {}); // Refresh UI when data is reloaded
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(start: _startDate, end: _endDate);
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      initialDateRange: initialDateRange,
    );

    if (newDateRange != null) {
      setState(() {
        _startDate = newDateRange.start;
        _endDate = newDateRange.end;
        _loadData();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Insotools Data Graphics')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildKpiCards(),
          const SizedBox(height: 24),
          _ChartContainer(
            title: 'Licencias de Juego por Fecha',
            child: _buildLicenciasBarChart(),
          ),
          const SizedBox(height: 24),
          _ChartContainer(
            title: 'Estados de Lotes',
            child: _buildEstadosPieChart(),
          ),
          const SizedBox(height: 24),
          _buildComprasCharts(),
          const SizedBox(height: 24),
          _ChartContainer(
            title: 'Auditorías',
            header: ElevatedButton.icon(
              onPressed: () => _selectDateRange(context),
              icon: const Icon(Icons.calendar_today),
              label: Text(
                '${DateFormat('d/M/y').format(_startDate)} - ${DateFormat('d/M/y').format(_endDate)}',
              ),
            ),
            child: _buildAuditsTable(),
          ),
        ],
      ),
    );
  }

  Widget _buildKpiCards() {
    return Column(
      children: [
        FutureBuilder<LicenciasActivas>(
          future: _licenciasActivas,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data!;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _KpiCard(title: 'Activas', value: data.activas.toString()),
                  _KpiCard(
                    title: 'No Activas',
                    value: data.noActivas.toString(),
                  ),
                  _KpiCard(
                    title: 'Pendientes',
                    value: data.pendientes.toString(),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return const Text('Error');
            }
            return const CircularProgressIndicator();
          },
        ),
        const SizedBox(height: 16),
        FutureBuilder<PlayersStripe>(
          future: _playersStripe,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data!;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _KpiCard(title: 'Con Stripe', value: data.con.toString()),
                  _KpiCard(title: 'Sin Stripe', value: data.sin.toString()),
                ],
              );
            }
            return const SizedBox.shrink(); // Don't show anything if no data
          },
        ),
      ],
    );
  }

  Widget _buildLicenciasBarChart() {
    return FutureBuilder<List<LicenciaPorFecha>>(
      future: _licenciasPorFecha,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error al cargar datos'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          final data = snapshot.data!;
          return BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY:
                  data
                      .map((e) => e.cantidad)
                      .reduce((a, b) => a > b ? a : b)
                      .toDouble() *
                  1.2,
              barTouchData: BarTouchData(enabled: true),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      final index = value.toInt();
                      if (index >= 0 && index < data.length) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            DateFormat('d/M').format(data[index].fecha),
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                    reservedSize: 38,
                  ),
                ),
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: true, reservedSize: 40),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: const FlGridData(show: false),
              borderData: FlBorderData(show: false),
              barGroups: data.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                return BarChartGroupData(
                  x: index,
                  barRods: [
                    BarChartRodData(
                      toY: item.cantidad.toDouble(),
                      color: Theme.of(context).colorScheme.primary,
                      width: 16,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ],
                );
              }).toList(),
            ),
          );
        } else {
          return const Center(child: Text('No hay datos disponibles'));
        }
      },
    );
  }

  Widget _buildEstadosPieChart() {
    return FutureBuilder<EstadosLotes>(
      future: _estadosLotes,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error al cargar datos'));
        } else if (snapshot.hasData) {
          final data = snapshot.data!;
          final sections = [
            PieChartSectionData(
              color: Colors.green,
              value: data.libres.toDouble(),
              title: '${data.libres}',
              radius: 50,
            ),
            PieChartSectionData(
              color: Colors.orange,
              value: data.conDueno.toDouble(),
              title: '${data.conDueno}',
              radius: 50,
            ),
            PieChartSectionData(
              color: Colors.blue,
              value: data.enVenta.toDouble(),
              title: '${data.enVenta}',
              radius: 50,
            ),
          ];
          return Row(
            children: [
              Expanded(child: PieChart(PieChartData(sections: sections))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Indicator(color: Colors.green, text: 'Libres'),
                  _Indicator(color: Colors.orange, text: 'Con Dueño'),
                  _Indicator(color: Colors.blue, text: 'En Venta'),
                ],
              ),
            ],
          );
        } else {
          return const Center(child: Text('No hay datos disponibles'));
        }
      },
    );
  }

  Widget _buildComprasCharts() {
    return FutureBuilder<ComprasCompletadas>(
      future: _comprasCompletadas,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error al cargar datos'));
        } else if (snapshot.hasData) {
          final data = snapshot.data!;
          // Pie Chart for Pastel
          final pastelSections = [
            PieChartSectionData(
              color: Colors.teal,
              value: data.pastel.completadas.toDouble(),
              title: 'Completadas\n${data.pastel.completadas}',
              radius: 60,
              titleStyle: const TextStyle(fontSize: 12, color: Colors.white),
            ),
            PieChartSectionData(
              color: Colors.redAccent,
              value: data.pastel.noCompletadas.toDouble(),
              title: 'No Completadas\n${data.pastel.noCompletadas}',
              radius: 60,
              titleStyle: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ];

          // Line Chart for Lineas
          final lineSpots = data.lineas.asMap().entries.map((entry) {
            return FlSpot(
              entry.key.toDouble(),
              entry.value.completadas.toDouble(),
            );
          }).toList();

          return Column(
            children: [
              _ChartContainer(
                title: 'Compras (General)',
                child: Row(
                  children: [
                    Expanded(
                      child: PieChart(PieChartData(sections: pastelSections)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _Indicator(color: Colors.teal, text: 'Completadas'),
                        _Indicator(
                          color: Colors.redAccent,
                          text: 'No Completadas',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              _ChartContainer(
                title: 'Tendencia de Compras Completadas',
                child: LineChart(
                  LineChartData(
                    gridData: const FlGridData(show: false),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            final index = value.toInt();
                            if (index >= 0 && index < data.lineas.length) {
                              return Text(
                                DateFormat(
                                  'd/M',
                                ).format(data.lineas[index].fecha),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                          reservedSize: 38,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(show: false),
                    lineBarsData: [
                      LineChartBarData(spots: lineSpots, isCurved: true),
                    ],
                  ),
                ),
              ),
            ],
          );
        } else {
          return const Center(child: Text('No hay datos disponibles'));
        }
      },
    );
  }

  Widget _buildAuditsTable() {
    return FutureBuilder<List<Audit>>(
      future: _audits,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error al cargar datos'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          final data = snapshot.data!;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Transaction ID')),
                DataColumn(label: Text('Changed By')),
                DataColumn(label: Text('New Status')),
                DataColumn(label: Text('Timestamp')),
              ],
              rows: data
                  .map(
                    (audit) => DataRow(
                      cells: [
                        DataCell(Text(audit.transactionId)),
                        DataCell(Text(audit.changedBy)),
                        DataCell(Text(audit.newStatus)),
                        DataCell(
                          Text(
                            DateFormat('y-MM-dd HH:mm').format(audit.timestamp),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          );
        } else {
          return const Center(child: Text('No hay datos disponibles'));
        }
      },
    );
  }
}

class _KpiCard extends StatelessWidget {
  final String title;
  final String value;

  const _KpiCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(value, style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}

class _ChartContainer extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? header;

  const _ChartContainer({
    required this.title,
    required this.child,
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (header != null)
              Wrap(
                spacing: 16.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  header!,
                ],
              )
            else
              Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            SizedBox(height: 250, child: child),
          ],
        ),
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  final Color color;
  final String text;

  const _Indicator({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: <Widget>[
          Container(width: 16, height: 16, color: color),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
