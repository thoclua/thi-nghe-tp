<template>
  <div class="container-fluid">
    <div class="row">
      <main class="col-md-6 mx-sm-auto px-4">
        <div class="pt-3 pb-2 mb-3 border-bottom text-center">
          <h1 class="h2">{{ welcome }}</h1>
        </div>

        <div class="form-signin" action="campains/index.html">
          <h1 class="h3 mb-3 font-weight-normal">Đăng nhập</h1>

          <label for="inputEmail" class="sr-only">Email: </label>
          <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email" autofocus
            v-model="txtEmail">

          <label for="inputPassword" class="sr-only">Mật khẩu</label>
          <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Mật khẩu"
            v-model="txtPassword">
          <button class="btn btn-lg btn-primary btn-block" id="login" type="button" @click="doLogin()">Đăng nhập</button>
        </div>

      </main>
    </div>
  </div>
</template>
  
<script>
import axios from 'axios';
import { toast } from 'vue3-toastify';
import 'vue3-toastify/dist/index.css';

export default {
  name: 'ComponentLogin',
  props: {},
  data: function () { //Tuong duong voi $scope.
    return {
      welcome: "Hội thảo kỹ năng nghề TP Hà Nội 2023 abc",
      txtEmail: "",
      txtPassword: ""
    }
  },
  methods: {
    async doLogin() {
      try {
        let request = {
          email: this.txtEmail,
          password: this.txtPassword
        };
        console.log(process.env.VUE_APP_API_LOGIN_URL)
        let response = await axios.post(process.env.VUE_APP_API_LOGIN_URL, request);
        if (response.status == 200) {
          localStorage.setItem("login", JSON.stringify(response.data.data));
          //Thanh cong!
          toast("Login thanh cong !", {
            autoClose: 1000,
          });
          this.$router.push('/home');
        }
        console.log(response);
      } catch (error) {
        console.log(error);
      }


    }
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
  