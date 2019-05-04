import Firebase from 'firebase';

let config = {
    apiKey: "AIzaSyBf_GL18m4Wxgzjd9Y-k1CYRx1vOfal97M",
    authDomain: "jagelvisr.firebaseapp.com",
    databaseURL: "https://jagelvisr.firebaseio.com",
    projectId: "jagelvisr",
    storageBucket: "jagelvisr.appspot.com",
    messagingSenderId: "1066980925442",
    appId: "1:1066980925442:web:ce3aa4cc4a85a971"
 };
let app = Firebase.initializeApp(config)
export const db = app.database()