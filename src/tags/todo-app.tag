import './todo-form.tag';
import './todo-list.tag';

<todo-app>
  <h3>Todos</h3>
  <todo-form store="{opts.store}"></todo-form>
  <todo-list store="{opts.store}"></todo-list>
  <p>
    Want a second fully synchronized list? Just declare another list component:
    no code required, no events to wire up!
  </p>
  <todo-list store="{opts.store}"></todo-list>
<script>


  let dispatcher = this.opts.store.dispatcher;
  this.on('mount', () => dispatcher.trigger(dispatcher.INIT_TODOS));

</script>
</todo-app>
