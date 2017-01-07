<firebase>

  <script>
    this.db = opts.data;
    console.log(this.db);
    writeUserData('u4bi', 'myungjae', 'u4bi@u4bi.com');
    
    function writeUserData(userId, name, email) {
      firebase.database().ref('users/' + userId).set({
        username: name,
        email: email
      });
    }
    
  </script>
</firebase>