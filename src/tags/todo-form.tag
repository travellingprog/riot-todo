<todo-form>
    <form onsubmit="{add}">
        <input name="input" type="text" placeholder="New Todo" autofocus="true">
        <input type="submit" value="Add Todo">
     </form>
    <button onclick="{clear}">Clear Completed</button>
<script>


    let store = this.opts.store;
    let dispatcher = store.dispatcher;

    this.add = (e) => {
        if (this.input.value) {
            dispatcher.trigger(dispatcher.ADD_TODO, {title: this.input.value, done: false});
            this.input.value = '';
        }
    };

    this.clear = (e) => {
        dispatcher.trigger(dispatcher.CLEAR_TODOS);
    };

</script>
</todo-form>

