
@section('scripts')

    <script>
        am4core.ready(function() {

            // Themes begin
            am4core.useTheme(am4themes_dataviz);
            am4core.useTheme(am4themes_animated);
            // Themes end

            // Create chart
            chart = am4core.create('kt_amcharts_3', am4charts.PieChart);
            chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

            var chartData = @json($productsByBrand);
            var chart = am4core.create('kt_amcharts_3', am4charts.PieChart);
            chart.hiddenState.properties.opacity = 0;

            chart.data = chartData;

            var series = chart.series.push(new am4charts.PieSeries());
            series.dataFields.value = 'value';
            series.dataFields.radiusValue = 'value';
            series.dataFields.category = 'country';
            series.slices.template.cornerRadius = 6;
            series.colors.step = 3;

            series.hiddenState.properties.endAngle = -90;

            chart.legend = new am4charts.Legend();

        }); // end am4core.ready()
    </script>
@endsection
