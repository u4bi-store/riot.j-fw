var config = {
    apiKey: "AIzaSyBD-WynWv9XVLYicAyFuxhE7fbfOBfNHGw",
    authDomain: "riot-firebase.firebaseapp.com",
    databaseURL: "https://riot-firebase.firebaseio.com",
    storageBucket: "riot-firebase.appspot.com",
    messagingSenderId: "295512557953"
  };

firebase.initializeApp(config);
var db = firebase.database();

riot.mount('firebase', {data : db} );