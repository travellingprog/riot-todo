import './todo-item.tag';

<todo-list>
  <ul>
    <li each="{todo in opts.store.todos}">
      <todo-item store="{parent.opts.store}" todo="{todo}">
    </li>
  </ul>
<script>


  let store = this.opts.store;
  store.on(store.CHANGED_EVENT, () => this.update());

</script>
</todo-list>
