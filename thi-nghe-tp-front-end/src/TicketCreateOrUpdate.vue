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
                        <li class="nav-item"><a class="nav-link active" href="./event-detail/">Tổng quan</a></li>
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
                <div class="border-bottom mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h1 class="h2">{{event.name}}</h1>
                    </div>
                    <span class="h6">{{event.date}}</span>
                </div>
    
                <div class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Tạo vé mới</h2>
                    </div>
                </div>
    
                <form class="needs-validation" novalidate action="events/detail.html">
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputNameticket">Tên</label>
                            <!-- adding the class is-invalid to the input, shows the invalid feedback below -->
                            <input type="text" class="form-control"  
                             :class="{ 'is-invalid': (!first_load && ticket.name <= 0) }" id="inputNameticket"
                            name="nameticket" placeholder="" value="" v-model="ticket.name" @change="disableFirstLoadd()">
                            <div class="invalid-feedback">
                                Tên không được để trống.
                            </div>
                        </div>
                    </div>
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputCost">Giá</label>
                            <input type="number" class="form-control" 
                             :class="{ 'is-invalid': (!first_load && ticket.cost <= 0) }" id="inputCost"
                            name="costticket" placeholder="" value="" v-model="ticket.cost" >
                            <div class="invalid-feedback">
                                Tên không được để trống.
                            </div>
                        </div>
                    </div>
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="selectSpecialValidity">Hiệu lực đặc biệt</label>
                            <select class="form-control" id="selectSpecialValidity" name="special_validity">
                                <option value="" selected>Không</option>
                                <option value="amount">Số lượng giới hạn</option>
                                <option value="date">Có thể mua đến ngày</option>
                            </select>
                        </div>
                    </div>
    
                    <!-- <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputAmount">Số lượng vé tối đa được bán</label>
                            <input type="number" class="form-control" id="inputAmount" name="amount" placeholder="" value="0">
                        </div>
                    </div> -->
    
                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputValidTill">Vé có thể được bán đến</label>
                            <input type="date"
                                   class="form-control"
                                   id="inputValidTill"
                                   name="valid_until"
                                   placeholder="yyyy-mm-dd HH:MM"
                                   value="">
                        </div>
                    </div>
    
                    <hr class="mb-4">
                    <button class="btn btn-primary" type="button"  @click="doSaveTicket()">Lưu vé</button>
                    <a href="./event-detail/" class="btn btn-link">Bỏ qua</a>
                </form>
    
            </main>
        </div>
    </div>
</template>
<script>
import axios from 'axios'

export default {
    name: 'TicketCreateOrUpdateComponent',
    props: ['eventId'],
    data() {
        return {
            ticket: {},
            event: {},
            first_load: true,
            organizer: {}
        }
    },
    methods: {
        disableFirstLoadd() {
            this.first_load = false;
        },
        async doSaveTicket() {
          

            if (this.ticket_name > 0 && this.ticket_cost > 0  ) {
                var request = {
                    id: parseInt(this.eventId),
                    organizer_id: this.organizer.id,
                    name: this.ticket_name,
                    cost: this.ticket_cost
                   
                }
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/admin/ticket/CreateOrUpate";
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
        
       
    },
    created() {
        this.organizer = JSON.parse(localStorage.getItem('login'))[0]
      //  this.doSaveTicket();
      this.loadEvent();
      //this.disableFirstLoadd();
    }
}
</script>