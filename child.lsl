// add this script inside the objects you want to add inside the rezzer

integer listenHandle;


default
{
    state_entry()
    {
        listenHandle =   llListen(6643,"",NULL_KEY,"");
    }

    listen(integer channel, string name, key id, string message)
    {

      if (message == "die") llDie();

    }

    on_rez(integer start_param)
    {
        llResetScript();
    }


}
