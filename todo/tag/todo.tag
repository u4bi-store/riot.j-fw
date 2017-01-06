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
        console.log('추가');  
        this.items.push({ title: this.refs.input.value });
        this.refs.input.value = '';
        
        console.log(this.items);
      }
      
      e.preventDefault();
    }
    
    del(e){
      console.log('삭제');
      console.log(this.items);
      this.items = this.items.filter(function(item){ return !item.done;
      });
      
      console.log(this.items);
    }
    
    check(e){
      console.log('체크');
      e.item.done = !e.item.done;
      
      console.log(e.item.done);
    }
    
    /* 노드체크*/
    isDone(item){ return item.done; }
  </script>
</todo>
