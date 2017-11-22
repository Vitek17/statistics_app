 $("#container1").ready(function() {
  $( "#email" ).selectmenu();
  var d = new Date();
  var month = d.getMonth();
  var day = d.getDate();
  var year = d.getFullYear();
  var d1 = new Date(year, month, day, 00, 00, 00);
  //alert(new Date(year, month, day, 00, 01));
  $('#datetimepicker1').datetimepicker({
      defaultDate: d1
  });

  $('#datetimepicker2').datetimepicker({
      useCurrent: false, //Important! See issue #1075
      defaultDate: d
  });
  $("#datetimepicker1").on("dp.change", function (e) {
      $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
  });
  $("#datetimepicker2").on("dp.change", function (e) {
      $('#datetimepicker1').data("DateTimePicker").maxDate(e.date);
  });
  /*$('#datetimepicker2').data("DateTimePicker").defaultDate({
    Default: false,
    Accepts: new Date(year, month, day, 00, 01)
  });*/
 // $('.dropdown').dropdown();
  //moment().format('LLLL');
 //$('#datetimepicker2').datetimepicker( {options.format: 'yyyy-mm-dd hh:ii'});
     /*$('#datetimepicker2').datetimepicker({
                    locale: 'ru'
                });*/
 //$(".form_datetime").datetimepicker({format: 'yyyy-mm-dd hh:ii'});
  /*  $('#datetimepicker').datetimepicker({
        format: 'dd/MM/yyyy hh:mm:ss'
      });*/
  //$('.datepicker').datepicker({ firstDay: 1 }).datepicker("setDate", new Date());
  //$( "#datepicker" ).datepicker({ firstDay: 1 }).datepicker("setDate", new Date());

  var createChart, seriesCounter, seriesOptions1, seriesOptions2; 
  seriesOptions1 = [];
  seriesOptions2 = [];
  seriesCounter = 0;
  var date1, date2;

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
    date1 = $( "#datetimepicker1 .form-control" ).val();
    date2 = $( "#datetimepicker2 .form-control" ).val();
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
        date1: date1,
        date2: date2
      },
      success: function(json, status, xhr) {
        seriesOptions1 = json.ap.map(function(x){ if( x[1] != 0) return [x[0], x[1]] ; else return [x[0],null];});
        seriesOptions2 = json.ap.map(function(x){ if( x[2] != 0) return [x[0], x[2]] ; else return [x[0],null];});
        var qw = json.ap.map(function(x){ if( x[1] != 0) return [x[0], x[1]] ;});
        console.log(qw);
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
          text: 'Answers: ' //+ $( "#datepicker" ).val()
      },
      tooltip: {   
          pointFormat: '{series.name}: <b>{point.y}</b>'    //{point.percentage:.1f}%
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
          text: 'Moves: ' //+ $( "#datepicker" ).val()
      },
      tooltip: {
          pointFormat: '{series.name}: <b>{point.y}</b>'    //{point.percentage:.1f}%
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
                  }/*,


                ///////////////////////////////////////////////////////////////////////
                  formatter: function() {
                      if (this.y != 0) {
                        return this.y +'%';
                      } 
                      else {
                        return null;
                      }
                  }*/
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



  $('#select_link')[0].click();
});