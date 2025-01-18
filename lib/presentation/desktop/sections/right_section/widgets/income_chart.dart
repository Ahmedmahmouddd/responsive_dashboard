import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/bloc/pie_chart_cubit/pie_chart_cubit.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PieChartCubit(),
      child: BlocBuilder<PieChartCubit, int>(
        builder: (context, activeIndex) {
          return AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                    enabled: true,
                    touchCallback: (event, pieTouchResponse) {
                      context
                          .read<PieChartCubit>()
                          .setActiveIndex(pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1);
                    }),
                sectionsSpace: 0,
                sections: [
                  PieChartSectionData(
                      radius: activeIndex == 0 ? 50 : 40,
                      value: 40,
                      showTitle: false,
                      color: const Color(0xFF064061)),
                  PieChartSectionData(
                      radius: activeIndex == 1 ? 50 : 40,
                      value: 25,
                      showTitle: false,
                      color: const Color(0xFF087DBC)),
                  PieChartSectionData(
                      radius: activeIndex == 2 ? 50 : 40,
                      value: 20,
                      showTitle: false,
                      color: const Color(0xFF4DB7F2)),
                  PieChartSectionData(
                      radius: activeIndex == 3 ? 50 : 40,
                      value: 15,
                      showTitle: false,
                      color: const Color(0xFFFAFAFA)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
