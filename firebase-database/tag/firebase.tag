<firebase>
  
  <div if={users}>
    <ul each={key,value in users}>
      {value}
      <li>{key.username}</li>
      <li>{key.email}</li>
    </ul>
  </div>
  
  <script>
    var self = this; 
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
    
    // delDB('dudu');
    function delDB(userId){
      this.db.ref('users/'+ userId).remove();
    }
    
    search('users/');
    function search(path){
      this.db.ref(path).once('value', function(snap) {

        self.users = snap.val();
        console.log(self.users);
        self.update();
      });
    }
  </script>
</firebase>