<todo>
  
  <ul>
    <li each={ items }>
      <label>
        <input type="checkbox" checked={ done } onclick={ parent.check } > { title }
      </label>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input">
    <button>추가 (갯수 :{ items.length })</button>
    <button onclick={ del }>삭제 (완료수 : { items.filter(isDone).length })</button>
  </form>

  <script>
    this.items = opts.items;
    
    add(e){
      if (this.refs.input.value) {
        console.log('add');
        this.items.push({ title: this.refs.input.value });
        this.refs.input.value = '';
        
      }
      
      e.preventDefault();
    }
    
    del(e){
      console.log('del');
      
    }
    
    check(e){
      console.log('check');
      e.item.done = !e.item.done;
      console.log('done : '+e.item.done);
    }
    
    isDone(item){ return item.done; }
    
  </script>
</todo>
