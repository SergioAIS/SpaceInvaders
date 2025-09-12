
// Inherit the parent event
event_inherited();

if (!start)
{
	path_start(path, pSpeed, path_action_continue, 0)
	start = 1
}

if (y > 780) instance_destroy()