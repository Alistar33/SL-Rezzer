integer listenHandle;

remove_listen_handle()
{
    llListenRemove(listenHandle);
}

default
{
    state_entry()
    {
        listenHandle =   llListen(6643,"",NULL_KEY,"");
    }

    listen(integer channel, string name, key id, string message)
    {

      if (message == "die") llDie();

        remove_listen_handle();
    }

    on_rez(integer start_param)
    {
        llResetScript();
    }

    changed(integer change)
    {
        if (change & CHANGED_OWNER)
        {
            llResetScript();
        }
    }
}
