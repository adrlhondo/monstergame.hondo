
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	int w;
	int h;
	int mx;
	int my;
	int p_x;
	int p_y;
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("Monster","monster",0.15*w);
		monster = add_sprite_for_image(SEImage.for_resource("Monster"));	
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(Math.random(0,w),Math.random(0,h));
	}
	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		p_x = MainScene.x;
		p_y = MainScene.y;
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(mx+(p_x-mx)/Math.random(20,200),my+(p_y-my)/Math.random(20,200));
	}
	public void cleanup()
	{
		base.cleanup();
	}
}
