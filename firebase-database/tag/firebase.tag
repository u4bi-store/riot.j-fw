<firebase>

  <script>
    this.db = opts.data;
    
    // setDB('dudu', 'soonja', 'soonja@u4bi.com');
    
    function setDB(userId, name, email) {
      this.db.ref('users/' + userId).set({
        username: name,
        email: email
      });
    }
    
    // updDB('dudu', 'jasoon', 'soonja@u4bi.com');
    
    function updDB(userId, name, email){
      this.db.ref('users/'+ userId).update({
        username: name,
        email: email
      });
    }
    
    delDB('dudu');
    function delDB(userId){
      this.db.ref('users/'+ userId).remove();
    }
  </script>
</firebase>