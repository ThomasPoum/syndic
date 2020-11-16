document.addEventListener('turbolinks:load', () => {

    var ctx = document.getElementById('myChart');
    if (ctx) {
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Estimated', 'Real'],
            datasets: [{
                label: 'Euros (€)',
                data: [ctx.dataset.est, ctx.dataset.real],
                backgroundColor: [
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(255, 99, 132, 0.2)'],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

}
});