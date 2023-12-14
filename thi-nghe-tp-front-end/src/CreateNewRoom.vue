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
                        <span>{{ event.name }}</span>
                    </h6>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link active" href="">Tổng quan</a></li>
                    </ul>
    
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Báo cáo</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item"><a class="nav-link" href="/event-create-event-capacity/">Công suất phòng</a></li>
                    </ul>
                </div>
            </nav>
    
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="border-bottom mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h1 class="h2">{{ event.name }}</h1>
                    </div>
                    <span class="h6">{{ event.date }}</span>
                </div>
    
                <div class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Tạo phòng mới</h2>
                    </div>
                </div>
    
                <form class="needs-validation" novalidate action="events/detail.html">
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputRoomname">Tên</label>
                            <!-- adding the class is-invalid to the input, shows the invalid feedback below -->
                            <input type="text" class="form-control"
                             :class="{ 'is-invalid': (!first_load && room.name <= 0) }" id="inputRoomname"
                            name="nameroom" placeholder="" value="" v-model="room.name" @change=" disableFirstLoad()">>
                            <div class="invalid-feedback">
                                Tên không được để trống.
                            </div>
                        </div>
                    </div>
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="selectChannel">Kênh</label>
                            <select class="form-control" id="selectChannel" name="channel">
                                <option value="1">Chính</option>
                                <option value="2">Phụ</option>
                            </select>
                        </div>
                    </div>
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputCapacity">Công suất</label>
                            <input type="number" class="form-control"
                             :class="{ 'is-invalid': (!first_load && room.capacity <= 0) }" id="inputCapacity"
                            name="capacity" value="" v-model="room.capacity">
                        </div>
                    </div>
    
                    <hr class="mb-4">
                    <button class="btn btn-primary" type="button"  @click="doSaveRoom()"></button>
                    <a href="events/detail.html" class="btn btn-link">Bỏ qua</a>
                </form>
    
            </main>
        </div>
    </div>
    
</template>
<script>
import axios from 'axios'

export default {
    name: 'RoomCreateOrUpdateComponent',
    props: ['eventId'],
    data() {
        return {
            room: {},
            event: {},
            channal:{},
            first_load: true,
            organizer: {}
        }
    },
    methods: {
        disableFirstLoad() {
            this.first_load = false;
        },
        async doSaveRoom() {
          

            if (this.room_name > 0 && this.room_capacity > 0  ) {
                var request = {
                    id: parseInt(this.eventId),
                    organizer_id: this.organizer.id,
                    name: this.room_name,
                    capacity: this.room_capacity
                   
                }
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "";
                let response = await axios.post(endpoint, request);
                console.log(response)
            }
            else {
                alert("De nghi dien du du lieu");
            }

        },
        async loadEvent() {
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
        // async loadEvent() {
        //     try {
        //         let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/event/get-detail-by-event-id";
        //         let request = {
        //             id: this.eventId
        //         }
        //         let response = await axios.post(endpoint, request);
        //         this.event = response.data.data[0]
        //     } catch (error) {
        //         console.log(error)
        //     }


        // },
        
       
    },
    created() {
        this.organizer = JSON.parse(localStorage.getItem('login'))[0]
      //  this.doSaveTicket();
      this.loadEvent();
     // this.disableFirstLoadd();
    }
}
</script>