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
    <button>추가 (할일 : { items.length })</button>
    <button onclick={ del } disabled={ items.filter(isDone).length == 0 }>
      삭제 (완료수 : { items.filter(isDone).length })
    </button>
  </form>

  <script>
    this.items = opts.items;
    
    add(e){
      if (this.refs.input.value) {
        this.items.push({ title: this.refs.input.value });
        this.refs.input.value = '';        
      }
      e.preventDefault();
    }
    
    del(e){
       this.items = this.items.filter(function(item){ return !item.done;
       });
    }
    
    check(e){
      e.item.done = !e.item.done;
    }
    
    /* 노드체크*/
    isDone(item){ return item.done; }
  </script>
  
  <style> :scope { font-size: 2rem }</style>
</todo>
