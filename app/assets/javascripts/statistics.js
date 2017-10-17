$("#container").ready(function() {
  
  $( "#datepicker" ).datepicker({ firstDay: 1 }).datepicker("setDate", new Date());
  $( "#email" ).selectmenu();
  var createChart, seriesCounter, seriesOptions; 
  seriesOptions = [];
  seriesCounter = 0;

  createChart = function() {
    var myChart;
    myChart = Highcharts.chart('container', {
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
      },
      title: {
          text: 'Statistics: ' + $( "#datepicker" ).val()
      },
      tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      plotOptions: {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',
              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                  style: {
                      color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                  }
              }
          }
      },
      series: [{
        type: 'pie',
        name: 'Tickets ',
        colorByPoint: true,
        data: seriesOptions
      }]
    });
  };

  $( document ).ajaxComplete(function() {
    if (seriesCounter === 1) {
    $( "#output" ).text( "Tickets:" );
           for(var i=0; i<seriesOptions.length; i++)
            {
              $('#output').append("<p>" + seriesOptions[i][0] + ": " + seriesOptions[i][1] + "</p>\n");
            }

          createChart();
        }

  });
  
  $('#select_link').click(function() {
    var email = $( "#email" ).val();
    var date = $( "#datepicker" ).val();
    seriesCounter = 0;
    $.ajaxSetup({
      'beforeSend': function(xhr) {
        xhr.setRequestHeader('Accept', 'text/javascript');
      }
    });
    $.ajax({
      type: 'POST',
      url: '/statistics',
      dataType: 'json',
      data: {
        email: email,
        date: date
      },
      success: function(json, status, xhr) {
        seriesOptions = json;
      }
    });   
    seriesCounter += 1;
  });
});