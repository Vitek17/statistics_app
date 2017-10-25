$("#container1").ready(function() {
  
  $( "#datepicker" ).datepicker({ firstDay: 1 }).datepicker("setDate", new Date());
  $( "#email" ).selectmenu();
  var createChart, seriesCounter, seriesOptions1, seriesOptions2; 
  seriesOptions1 = [];
  seriesOptions2 = [];
  seriesCounter = 0;

  $( document ).ajaxComplete(function() {
    if (seriesCounter === 1) {
              $( "#output1" ).css("border", "1px solid gray");
              $( "#output2" ).css("border", "1px solid gray");
              $( "#output1" ).text( "Answers:" );
              $( "#output2" ).text( "Moves:" );
           for(var i=0; i<seriesOptions1.length; i++)
            {
              $('#output1').append("<p>" + seriesOptions1[i][0] + ": " + seriesOptions1[i][1] + "</p>\n");
              $('#output2').append("<p>" + seriesOptions2[i][0] + ": " + seriesOptions2[i][1] + "</p>\n");
            }

          createChart1();

          createChart2();
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
        seriesOptions1 = json.answ;
        seriesOptions2 = json.move;
      }
    });   
    seriesCounter += 1;
  });


  createChart1 = function() {
    var myChart;
    myChart = Highcharts.chart('container1', {
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
      },
      title: {
          text: 'Answers: ' + $( "#datepicker" ).val()
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
        data: seriesOptions1
      }]
    });
};

  createChart2 = function() {
    var myChart;
    myChart = Highcharts.chart('container2', {
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
      },
      title: {
          text: 'Moves: ' + $( "#datepicker" ).val()
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
        data: seriesOptions2
      }]
    });
  };



});