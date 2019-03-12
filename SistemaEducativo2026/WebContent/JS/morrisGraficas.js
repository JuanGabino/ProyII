new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'myfirstchart',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
    { Notas: '2008', value: 20 },
    { Notas: '2009', value: 10 },
    { Notas: '2010', value: 5 },
    { Notas: '2011', value: 5 },
    { Notas: '2012', value: 20 }
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'Notas',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['value'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Value']
});