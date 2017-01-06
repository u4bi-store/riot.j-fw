<todo>
  
  <ul>
    <li each={ items }>
      <label>
        <input type="checkbox"> { title }
      </label>
    </li>
  </ul>
  
  <script>
    this.items = opts.items
  </script>
</todo>
