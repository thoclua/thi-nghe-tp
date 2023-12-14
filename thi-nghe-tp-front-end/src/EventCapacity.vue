<template>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="events/index.html">Nền tảng sự kiện</a>
        <span class="navbar-organizer w-100">{{ organizer.name }}</span>
        <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap">
                <a class="nav-link" id="logout" href="index.html">Đăng xuất</a>
            </li>
        </ul>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link" href="/home">Quản lý sự kiện</a></li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>{{event.name}}</span>
                    </h6>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link active" href="/event-detail/">Tổng quan</a></li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Báo cáo</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item"><a class="nav-link" href="./">Công suất phòng</a></li>
                    </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="border-bottom mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h1 class="h2">{{event.name}}</h1>
                    </div>
                    <span class="h6">Thoi Gian : {{event.date}}</span>
                </div>

                <div class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Công suất phòng</h2>
                    </div>
                </div>

                <div>
                    <BarChart :chartData="cData" />
                </div>

            </main>
        </div>
    </div>
</template>
  
<script>
import axios from 'axios';
import { defineComponent } from 'vue';
import { BarChart } from 'vue-chart-3';
import { Chart, registerables } from "chart.js";

Chart.register(...registerables);
export default defineComponent({
    name: 'ComponentEventCapacity',
    props: ["eventId"],
    components: { BarChart },
    data() {
        return {
            organizer: null,
            
            event: {

            },
            cData: {
                labels: [],
                datasets: [],
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Cong suat phong',
                    },
                },
            }
        }
    },
    methods: {
        async loadEventCapacity() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/room/get-romcapacity-by-eventid";
                let request = {
                    event_id: this.eventId
                }
                let response = await axios.post(endpoint, request);
                console.log(response)
                this.event = response.data.data[0]
                
             


                console.log(response.data.data)
                
                let rawData = response.data.data;
                let chartLabel = rawData.map(item => item.title); //Mang bam
                this.cData.labels = chartLabel;
                // blue : "#CCFFFF"
                // green: #99FF66
                // red: #FF0000
                let datasetCapacity = {
                    label: "Công suất phòng",
                    data: [],
                    backgroundColor: [],
                    
                };
                let datasetRegistation = {
                    label: "Số vé bán ra",
                    data: [],
                    backgroundColor: [],
                    
                }

                for (var i = 0; i < rawData.length; i++) {
                    let item = rawData[i];
                    datasetCapacity.data.push(item.capacity);
                    datasetCapacity.backgroundColor.push("#CCFFFF");

                    datasetRegistation.data.push(item.count_registrations);
                    if (item.capacity < item.count_registrations) {
                        datasetRegistation.backgroundColor.push("#FF0000")
                    } else {
                        datasetRegistation.backgroundColor.push("#99FF66")
                    }
                }

                //
                this.cData.datasets.push(datasetCapacity)
                this.cData.datasets.push(datasetRegistation)
                
               
              
               

            } catch (error) {
                console.log(error);
            }

        },

    },
    created() {
        this.organizer = JSON.parse(localStorage.getItem('login'))[0]
        console.log(this.organizer)
        this.loadEventCapacity()
    }
})
</script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
    margin: 40px 0 0;
}

ul {
    list-style-type: none;
    padding: 0;
}

li {
    display: inline-block;
    margin: 0 10px;
}

a {
    color: #42b983;
}
</style>
  