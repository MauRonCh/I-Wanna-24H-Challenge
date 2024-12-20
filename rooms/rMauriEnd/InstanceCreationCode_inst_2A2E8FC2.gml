add_trigger_key("itemMauri", {
    attribute_event: new TriggerEvent(function() {
        global.items.bosses[1] = true;
    }, 1)
})