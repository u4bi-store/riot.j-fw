<item>
  
  <div if={ isSpan }>
    <span>if control</span>
  </div>
  
  <ul>
    <li each={ items }>
      <input type="checkbox" checked={ done }> { title }
    </li>
  </ul>
  <script>
    this.isSpan = true;
    
    this.items = [
      { title: 'A', done: true},
      { title: 'B'},
      { title: 'C'}
    ];
    
  </script>
</item>