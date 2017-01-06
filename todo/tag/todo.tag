<todo>
  
  <ul>
    <li each={ items }>
      <label>
        <input type="checkbox"> { title }
      </label>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input">
    <button>추가 (갯수 :{ items.length })</button>
  </form>

  <script>
    this.items = opts.items;
    
    add(e) {
      if (this.refs.input.value) {
        console.log('add');
        this.items.push({ title: this.refs.input.value });
        this.refs.input.value = '';
        
      }
      
      e.preventDefault();
    }


  </script>
</todo>
