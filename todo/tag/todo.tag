<todo>
  
  <ul>
    <li each={ items }>
      <label>
        <input type="checkbox"> { title }
      </label>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input>
    <button>추가 (갯수 :{ items.length })</button>
  </form>

  <script>
    this.items = opts.items;
    
    add(e) {
      console.log('add');
      e.preventDefault();
    }


  </script>
</todo>
