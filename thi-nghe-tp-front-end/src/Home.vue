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
                        <li class="nav-item"><a class="nav-link active" href="events/index.html">Quản lý sự kiện</a></li>
                    </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Quản lý sự kiện</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <a href="javascript:void(0)" @click="redirectToCreateEvent()" class="btn btn-sm btn-outline-secondary">Tạo sự kiện mới</a>
                        </div>
                    </div>
                </div>

                <div class="row events">
                    <div class="col-md-4" v-for="e in events" :key="e.id">
                        <div class="card mb-4 shadow-sm">
                            <a href="javascript:void(0)" class="btn text-left event" @click="redirectEventDetail(e.id)">
                                <div class="card-body">
                                    <h5 class="card-title">{{ e.name }}</h5>
                                    <p class="card-subtitle">{{ e.date }}</p>
                                    <hr>
                                    <p class="card-text">{{ e.count_member }} người đăng ký</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

            </main>
        </div>
    </div>
</template>
  
<script>
import axios from 'axios';

export default {
    name: 'ComponentHome',
    props: {
        //   msg: String
    },
    data() {
        return {
            organizer: null,
            events: [
                
            ]
        }
    },
    methods: {
        async loadEvents() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/event/get-by-organizer-id";
                let request = {
                    organizer_id: this.organizer.id
                }
                let response = await axios.post(endpoint, request);
                this.events = response.data.data
                console.log(response)
            } catch (error) {
                console.log(error);
            }

        },
        redirectEventDetail(id){
            this.$router.push(`/event-detail/${id}`)
        },
        redirectToCreateEvent(){
            this.$router.push(`/event-create-or-update/0`);
        }
    },
    created() {
        this.organizer = JSON.parse(localStorage.getItem('login'))[0]
        console.log(this.organizer)
        this.loadEvents()
    }
}
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
  