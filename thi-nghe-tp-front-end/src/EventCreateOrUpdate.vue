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
                        <li class="nav-item"><a class="nav-link active" href="/home">Quản lý sự kiện</a></li>
                    </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Quản lý sự kiện</h1>
                </div>

                <div class="mb-3 pt-3 pb-2">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                        <h2 class="h4">Tạo sự kiện mới</h2>
                    </div>
                </div>

                <div class="needs-validation">

                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputName">Tên</label>
                            <!-- adding the class is-invalid to the input, shows the invalid feedback below -->
                            <input type="text" class="form-control "
                                :class="{ 'is-invalid': (!first_load && event.name <= 0) }" id="inputName"
                                name="name" placeholder="" value="" v-model="event.name" @change="disableFirstLoad()">
                            <div class="invalid-feedback">
                                Tên không được để trống.
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputSlug">Slug</label>
                            <input type="text" class="form-control"
                                :class="{ 'is-invalid': (!first_load && event.slug <= 0) }" id="inputSlug"
                                name="slug" placeholder="" value="" v-model="event.slug">
                            <div class="invalid-feedback">
                                Slug không được để trống
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-lg-4 mb-3">
                            <label for="inputDate">Ngày</label>
                            <input type="date" class="form-control"
                                :class="{ 'is-invalid': (!first_load && event.date <= 0) }" id="inputDate"
                                name="date" placeholder="yyyy-mm-dd" value="" v-model="event.date">
                            <div class="invalid-feedback ">
                                Thời gian không được để trống
                            </div>
                        </div>

                    </div>

                    <hr class="mb-4">
                    <button class="btn btn-primary" type="button" @click="doSaveEvent()">Lưu sự kiện</button>
                    <a href="events/index.html" class="btn btn-link">Bỏ qua</a>
                </div>

            </main>
        </div>
    </div>
</template>
<script>
import axios from 'axios'

export default {
    name: 'EventCreateOrUpdateComponent',
    props: ['eventId'],
    data() {
        return {
            event: {},
            first_load: true,
            organizer: {}
        }
    },
    methods: {
        disableFirstLoad() {
            this.first_load = false;
        },
        async doSaveEvent() {
            var request = {
                    id: parseInt(this.eventId),
                    organizer_id: this.organizer.id,
                    name: this.event_name,
                   
                    slug: this.event_slug,
                    date: this.event_date
                }
                let endpoint = process.env.VUE_APP_API_DEFAULT_URL + "/manager/event/create-or-update";
                let response = await axios.post(endpoint, request);
                console.log(response)
               

            // if (this.event_name > 0  && this.event_slug > 0 && this.event_date > 0) {
                
            // }
            // else {
            //     alert("De nghi dien du du lieu");
            // }

        },
        async loadEventById() {
            if (parseInt(this.eventId) > 0) {
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
            }
        }
    },
    created() {
        this.organizer = JSON.parse(localStorage.getItem('login'))[0]
        this.loadEventById();
    }
}
</script>