<firebase>

  <script>
    this.db = opts.data;
    
    setDB('dudu', 'soonja', 'soonja@u4bi.com');
    
    function setDB(userId, name, email) {
      this.db.ref('users/' + userId).set({
        username: name,
        email: email
      });
    }
    
  </script>
</firebase>