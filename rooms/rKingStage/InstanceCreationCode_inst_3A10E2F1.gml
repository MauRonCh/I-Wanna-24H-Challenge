add_trigger_key("itemKing", {
    attribute_event: new TriggerEvent(function() {
        global.items.bosses[2] = true;
    }, 1)
})