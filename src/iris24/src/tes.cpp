#include "ros/ros.h"
#include "iris24/server2bs.h"


int main (int argc, char** argv)
{
    ros::init (argc, argv, "tes");
    ros::NodeHandle n;
    ros::Publisher chatter_pub = n.advertise<iris24::server2bs> ("/server2bs", 1);

    ros::Rate loop_rate(1);

    int count = 0;

    while (ros::ok())
    {
        iris24::server2bs msg;

        msg.angka = 3;
        

    
        chatter_pub.publish (msg);

        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}