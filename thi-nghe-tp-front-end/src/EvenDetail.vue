<template>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="events/index.html">Nền tảng sự kiện</a>
        <span class="navbar-organizer w-100">{{organizer.name}}</span>
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
                        <li class="nav-item"><a class="nav-link active" href="events/detail.html">Tổng quan</a></li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Báo cáo</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item"><a class="nav-link" href="reports/index.html">Công suất phòng</a></li>
                    </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="border-bottom mb-3 pt-3 pb-2 event-title">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h1 class="h2">{{event.name}}</h1>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <a href="javascript:void(0)" @click="redirectToEventEdit()" class="btn btn-sm btn-outline-secondary">Sửa sự kiện</a>
                            </div>
                        </div>
                    </div>
                    <span class="h6">{{event.date}}</span>
                </div>

                <!-- Tickets -->
                <div id="tickets" class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Vé</h2>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <a href="javascript:void(0)" @click="CreateNewTicket()" class="btn btn-sm btn-outline-secondary">
                                    Tạo vé mới
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row tickets">
                    <div class="col-md-4" v-for="t in tickets" :key="t.id">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">{{t.name}}</h5>
                                <p class="card-text">{{t.cost}}</p>
                                <p class="card-text"></p>
                            </div>
                        </div>
                    </div>
                    
                </div>

                <!-- Sessions -->
                <div id="sessions" class="mb-3 pt-3 pb-2" >
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Phiên</h2>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <a href="javascript:void(0)" @click="CreateNewSession()" class="btn btn-sm btn-outline-secondary">
                                    Tạo phiên mới
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="table-responsive sessions">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Thời gian</th>
                                <th>Loại</th>
                                <th class="">Tiêu đề</th>
                                <th>Người trình bày</th>
                                <th>Kênh</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="s in sessions" :key="s.id">
                                <td>{{$moment(s.start).format("DD/MM/YYYY")}} - {{$moment(s.end).format("DD/MM/YYYY")}}</td>
                                <td>{{s.type}}</td>
                                <td class="">{{s.title}}</td>
                                <td>{{s.speaker}}</td>
                                <td>{{s.channel_name}}/{{s.room_name}}</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>

                <!-- Channels -->
                <div id="channels" class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Kênh</h2>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <a href="channels/create.html" class="btn btn-sm btn-outline-secondary">
                                    Tạo kênh mới
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row channels" >
                    <div class="col-md-4" v-for="r in channels" :key="r.id">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">{{r.channel_name}}</h5>
                                <p class="card-text">Phiên: {{ r.count_session }}, Phòng: {{r.count_room}}</p>
                            </div>
                        </div>
                    </div>
                    
                </div>

                <!-- Rooms -->
                <div id="rooms" class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Phòng</h2>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <a href="javascript:void(0)" @click="CreateNewRoom()" class="btn btn-sm btn-outline-secondary">
                                    Tạo phòng mới
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="table-responsive rooms">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Tên</th>
                                <th>Công suất</th>
                            </tr>
                        </thead>
                        <tbody  v-for="r in rooms" :key="r.id" >
                            <tr>
                                <td>{{r.name}}</td>
                                <td>{{r.capacity}}</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>

            </main>
        </div>
    </div>
</template>
  
<script>
import axios from 'axios';
export default {
    name: 'ComponentEvenDetail',
    props: ['eventId'],
    data() {
        return {
            organizer: null,
            event: {},
            tickets:[],
            sessions:[],
            rooms:[],
            channels: [],

        }
    },
    methods: {
        async loadEventDetail() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/event/get-detail-by-event-id";
                let request = {
                    id: this.eventId
                }
                let response = await axios.post(endpoint, request);
                this.event = response.data.data[0]
            } catch (error) {
                console.log(error)
            }


        },
        async loadTicketByEvent_Id() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/ticket/get-by-event-id";
                let request = {
                    event_id: this.eventId
                }
                let response = await axios.post(endpoint, request);
                // console.log(response)
                this.tickets = response.data.data
            } catch (error) {
                console.log(error)
            }


        },
        async loadSessionsByEvent_Id() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/sesions/get-by-event-id";
                let request = {
                    event_id: this.eventId
                }
                let response = await axios.post(endpoint, request);
                console.log(response)
                this.sessions = response.data.data
            } catch (error) {
                console.log(error)
            }


        },
        async loadRoomByEvent_Id() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/rooms/get-by-event-id";
                let request = {
                    event_id: this.eventId
                }
                let response = await axios.post(endpoint, request);
                console.log(response)
                this.rooms = response.data.data
            } catch (error) {
                console.log(error)
            }


        },
        async loadRoomEventByEvent_Id() {
            try {
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/rooms/get-room-by-event-id";
                let request = {
                    event_id: this.eventId
                }
                let response = await axios.post(endpoint, request);
                console.log(response)
                this.channels = response.data.data
            } catch (error) {
                console.log(error)
            }


        },
        redirectToEventEdit(){
            this.$router.push(`/event-create-or-update/${this.eventId}`)
        },
        CreateNewTicket(){
            this.$router.push(`/ticket-create-or-update/${this.eventId}`)
        },
        CreateNewSession(){
            this.$router.push(`/session-create-or-update/${this.eventId}`)
        },
        CreateNewRoom(){
            this.$router.push(`/room-create-or-update/${this.eventId}`)
        },





    },
    created() {
        this.organizer = JSON.parse(localStorage.getItem('login'))[0];
        this.loadEventDetail()
        this.loadTicketByEvent_Id()
        this.loadSessionsByEvent_Id()
        this.loadRoomByEvent_Id()
        this.loadRoomEventByEvent_Id()
        
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
  