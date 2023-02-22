vector pos = <0,0,1>; //Here you can adjuste the position of the rezzed objects

list obj = [];
integer nt = 0;
integer a = 0;
string name = "";
key kav = "";
string delete ="Delete";
default
{
    touch_start(integer total_number)
    {
        kav = llDetectedKey(0);
        obj = [];
        nt = llGetInventoryNumber(INVENTORY_OBJECT);
        if (nt > 12)
        {
            nt = 12;
        }
        for(a = 0; a < nt; a++)
        {
            name = llGetInventoryName(INVENTORY_OBJECT,a);
            obj = obj + [name];
        }
        obj = obj + delete;
        llDialog(kav,"What choice?",obj, 6643);
        llListen(6643,"",NULL_KEY,"");
    }
    listen(integer channel, string name, key id, string message)
    { 
    if (message == "Delete") { llRegionSay(6643,"die");  }
    else llRezAtRoot(message,llGetPos()+pos,<0,0,0>,ZERO_ROTATION,66);
    }
}
