// src/router.js
import { createRouter, createWebHistory } from 'vue-router'
import ComponentLogin from './Login.vue';
import ComponentHome from './Home.vue'
import ComponentEvenDetail from './EvenDetail.vue'
import EventCreateOrUpdateComponent from './EventCreateOrUpdate.vue';
import ComponentEventCapacity from './EventCapacity.vue';
import TicketCreateOrUpdateComponent from './TicketCreateOrUpdate.vue';
import SessionCreateOrUpdateComponent from './SessionCreateOrUpdate.vue';
import RoomCreateOrUpdateComponent from './CreateNewRoom.vue';


// import App from './App.vue'


const routes = [
  { path: '/', component:  ComponentLogin},
  { path: '/home', component: ComponentHome , meta: { requiresAuth: true }},
  { path: '/event-detail/:eventId', component: ComponentEvenDetail , meta: { requiresAuth: true }, props: true,},
  { path: '/event-create-or-update/:eventId', component: EventCreateOrUpdateComponent , meta: { requiresAuth: true }, props: true,},
  { path: '/event-create-event-capacity/:eventId', component:  ComponentEventCapacity,  meta: { requiresAuth: true }, props: true,},
  { path: '/ticket-create-or-update/:eventId', component:  TicketCreateOrUpdateComponent,  meta: { requiresAuth: true }, props: true,},
  { path: '/session-create-or-update/:eventId', component:  SessionCreateOrUpdateComponent,  meta: { requiresAuth: true }, props: true,},
  { path: '/room-create-or-update/:eventId', component:  RoomCreateOrUpdateComponent,  meta: { requiresAuth: true }, props: true,},

];

const router = createRouter({
    history: createWebHistory(),
    routes,
  });

// Navigation Guard
router.beforeEach((to, from, next) => {
    const loginUser = localStorage.getItem('login');
  
    // Kiểm tra nếu route yêu cầu xác thực và không có dữ liệu đăng nhập
    if (to.meta.requiresAuth && !loginUser) {
      next('/'); // Chuyển hướng về trang login
    } else {
      next(); // Tiếp tục điều hướng
    }
  });

export default router;