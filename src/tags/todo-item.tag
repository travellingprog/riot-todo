import '../style/todo-item.less';

<todo-item>
    <span class="{done: opts.todo.done}" onclick="{toggle}">
        {opts.todo.title}
    </span>
<script>


    let dispatcher = this.opts.store.dispatcher;

    this.toggle = () => {
        dispatcher.trigger(dispatcher.TOGGLE_TODO, opts.todo);
    };

</script>
</todo-item>
