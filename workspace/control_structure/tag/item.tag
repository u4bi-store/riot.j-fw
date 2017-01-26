<item>
  
  <div if={ isSpan }>
    <span>if control</span>
  </div>
  
  <ul>
    <li each={ items }>
      <input type="checkbox" checked={ done }> { title }
    </li>
  </ul>
  
  <div each={ data}>
    <p>
      <span onclick={ parent.remove }>{ title }</span>
    </p>
  </div>
  
  <div each={ words }>
    <p>
      <span onclick={ parent.removeWord }>{ title }</span>
    </p>
  </div>
  
  <custom-tag each={ items }>
    <p>{ title }</p>
  </custom-tag>
  
  <p each="{ name, i in array}"> <!-- key , value  in variable -->
    <span>{ i } : { name }</span>  
  </p>
  
  <p each="{ value, name  in obj }">{ name } = { value }</p>
  this.obj = {
    key1: 'value1',
    key2: 1110.8900,
    key3: Math.random()
  }
  
  <div each="{ item in items }" no-reorder>{ item.title }</div>
  
  <script>
    this.isSpan = true;
    
    this.items = [
      { title: 'A', done: true},
      { title: 'B'},
      { title: 'C'}
    ];
    
    this.data = [
      { title: 'DATA_A'},
      { title: 'DATA_B'}
    ];
    
    remove(event){
      console.log('remove function : '+event.target.innerHTML);
      console.log(event);
    }
    
    this.words = [
      { title: 'WORD_A'},
      { title: 'WORD_B'},
      { title: 'WORD_C'},
      { title: 'WORD_D'}
    ];
    
    removeWord(e){
      var word = e.item;
      console.log('word : '+word);
      
      var index = this.words.indexOf(word);
      console.log('index : '+index);
      
      this.words.splice(index, 1);
    }
    
    this.array = [
      true,
      110,
      Math.random(),
      'fourth'
    ];
    
  </script>
</item>