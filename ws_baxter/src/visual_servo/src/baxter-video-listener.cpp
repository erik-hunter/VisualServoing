#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <stdlib.h>
#include <visp/vpMbEdgeTracker.h>
#include <visp/vpMeEllipse.h>
#include <visp/vpKltOpencv.h>
#include <visp/vpDisplayOpenCV.h>
#include <visp/vpOpenCVGrabber.h>
#include <visp/vpDot2.h>
#include <visp/vpFeatureBuilder.h>
#include <visp/vpServo.h>


/////used for simulation tracking
#include <visp/vpSimulatorCamera.h>
#include <visp/vpDisplayX.h>
#include <visp/vpDisplayGDI.h>
#include <visp/vpProjectionDisplay.h>
#include <visp/vpServoDisplay.h>
///////////////////////////


namespace enc = sensor_msgs::image_encodings;

static const char WINDOW[] = "OpenCV Image";

int global_min_threshold=50;
int global_squareness_ratio=20;

void update_global_min_threshold(int,void*) 
{
	//do nothing
}

void update_global_squareness_ratio(int,void*) 
{
	//do nothing
}



class ImageConverter
{
	bool tracking;
	ros::NodeHandle nh_;
	image_transport::ImageTransport it_;
	image_transport::Subscriber image_sub_;
	image_transport::Publisher image_pub_;

	vpMbEdgeTracker tracker;
	vpDisplayOpenCV *d;
	vpHomogeneousMatrix cMo;
	vpCameraParameters cam;
	char* ros_image_stream;
	bool firstFrame;

	public:
	ImageConverter(char* ros_img_stream)
		: it_(nh_)
	{
		ros_image_stream = ros_img_stream;
		tracking = false;
		firstFrame = true;

		image_pub_ = it_.advertise("correll_ros2opencv", 1);
		image_sub_ = it_.subscribe(ros_image_stream, 1, &ImageConverter::analyze_frame, this);

		cv::namedWindow(WINDOW);
	}

	~ImageConverter()
	{
		cv::destroyWindow(WINDOW);
	}

	void analyze_frame(const sensor_msgs::ImageConstPtr& msg)
	{
		cv_bridge::CvImagePtr cv_ptr;
		try
		{
			cv_ptr = cv_bridge::toCvCopy(msg, enc::BGR8);
		}
		catch (cv_bridge::Exception& e)
		{
			ROS_ERROR("cv_bridge exception: %s", e.what());
			return;
		}

		//  Initialize the edge tracker if this is the first frame recieved
		if(firstFrame)
		{
			firstFrame = false;            
			init_the_edge_tracker(cv_ptr->image);
		}

		/* Add any OpenCV processing here */

		// end of processing
		trackCube(cv_ptr->image);

		//image_pub_.publish(cv_ptr->toImageMsg());
	}

	void init_the_edge_tracker(cv::Mat img)
	{
		std::cout << "INITING" << std::endl;
		//ros
		vpImage<unsigned char> I;

		vpImageConvert::convert(img, I);
		d = new vpDisplayOpenCV(I);

		vpDisplay::display(I);
		vpDisplay::flush(I);

		vpMe me;
		me.setMaskSize(5);
		me.setMaskNumber(180);
		me.setRange(8);
		me.setThreshold(10000);
		me.setMu1(0.5);
		me.setMu2(0.5);
		me.setSampleStep(4);
		me.setNbTotalSample(250);
		tracker.setMovingEdge(me);
		cam.initPersProjWithoutDistortion(839, 839, 325, 243);
		tracker.setCameraParameters(cam);
		tracker.setNearClippingDistance(0.1);
		tracker.setFarClippingDistance(100.0);
		tracker.setClipping(tracker.getClipping() | vpMbtPolygon::FOV_CLIPPING);
		tracker.setDisplayFeatures(true);
		tracker.setOgreVisibilityTest(true);
		tracker.setAngleAppear(70);
		tracker.setAngleDisappear(80);
		tracker.loadModel("cube.cao");
		tracker.initClick(I, "cube.init");

	}

	private:
	void trackCube(cv::Mat frame)
	{

		vpImage<unsigned char> I;



		vpImageConvert::convert(frame, I);

		d = new vpDisplayOpenCV(I);

		vpDisplay::display(I);

		tracker.track(I);
		tracker.getPose(cMo);
		tracker.getCameraParameters(cam);
		tracker.display(I, cMo, cam, vpColor::red, 2);
		//vpDisplay::displayFrame(I, cMo, cam, 0.025, vpColor::none, 3);
		vpDisplay::flush(I);
		if (vpDisplay::getClick(I, false))
			exit(0);

	}
};



///////////////////////////////////////////////////////////////
//////Currently only used to Display Simulation Tests ////////////////
void display_trajectory(const vpImage<unsigned char> &I, std::vector<vpPoint> &point,
                        const vpHomogeneousMatrix &cMo, const vpCameraParameters &cam);
void display_trajectory(const vpImage<unsigned char> &I, std::vector<vpPoint> &point,
                        const vpHomogeneousMatrix &cMo, const vpCameraParameters &cam)
{
  static std::vector<vpImagePoint> traj[4];
  vpImagePoint cog;
  for (unsigned int i=0; i<4; i++) {
    // Project the point at the given camera position
    point[i].project(cMo);
    vpMeterPixelConversion::convertPoint(cam, point[i].get_x(), point[i].get_y(), cog);
    traj[i].push_back(cog);
  }
  for (unsigned int i=0; i<4; i++) {
    for (unsigned int j=1; j<traj[i].size(); j++) {
      vpDisplay::displayLine(I, traj[i][j-1], traj[i][j], vpColor::green);
    }
  }
}
////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////
//End of Simulation Display Methods

int main(int argc, char** argv)
{

/* Commented out Image Based Visual Servoing Simulation
	try{
		//desired camera location
		vpHomogeneousMatrix cdMo(0, 0, 0.75, 0.0, 0.0, 0.0);
		//initial simulation camera location
		vpHomogeneousMatrix cMo(0.15, -0.1, 1.0,
			vpMath::rad(10), vpMath::rad(-10), vpMath::rad(50));

		//Create points in simulation to track towards (probably set to our cubes corner coords in future)

		//Non Display Simulation points
		// vpPoint point[4];
		
		//Display Simulation points
		std::vector<vpPoint> point(4);		
		point[0].setWorldCoordinates(-0.1,-0.1,0);
                point[1].setWorldCoordinates(0.1,-0.1,0);
                point[2].setWorldCoordinates(0.1,0.1,0);
                point[3].setWorldCoordinates(-0.1,0.1,0);

		//task definition
		vpServo task;
		task.setServo(vpServo::EYEINHAND_CAMERA);//EYEINHAND is the control law we use
		task.setInteractionMatrixType(vpServo::CURRENT);
		task.setLambda(0.5);

		vpFeaturePoint p[4], pd[4];		
		for (unsigned int i = 0; i<4; i++){
			//track takes the 3D position of points and applies perspective projection
			//for pd[i] it creates our desired feature properties
			point[i].track(cdMo);
			vpFeatureBuilder::create(pd[i], point[i]);
			//for p[i] it creates our current feature properties
			point[i].track(cMo);
			vpFeatureBuilder::create(p[i], point[i]);
			//this adds a set of both our current and desired features for each point
			task.addFeature(p[i], pd[i]);
		}

		//wMc - camera position in world frame
		//wMo - object postition in world frame
		vpHomogeneousMatrix wMc, wMo;
		vpSimulatorCamera robot;
		robot.setSamplingTime(0.040);

		//compute the world frame position of our object... somehow.
		robot.getPosition(wMc); //robot should know its own position
		wMo = wMc * cMo;


//////////////////----------All for Display---------///////////////////////
    vpImage<unsigned char> Iint(480, 640, 255) ;
    vpImage<unsigned char> Iext(480, 640, 255) ;
#if defined(VISP_HAVE_X11)
    vpDisplayX displayInt(Iint, 0, 0, "Internal view");
    vpDisplayX displayExt(Iext, 670, 0, "External view");
#elif defined(VISP_HAVE_GDI)
    vpDisplayGDI displayInt(Iint, 0, 0, "Internal view");
    vpDisplayGDI displayExt(Iext, 670, 0, "External view");
#else
    std::cout << "No image viewer is available..." << std::endl;
#endif
#if defined(VISP_HAVE_DISPLAY)
    vpProjectionDisplay externalview;
    for (unsigned int i = 0 ; i < 4 ; i++)
      externalview.insert(point[i]) ;
#endif
    vpCameraParameters cam(840, 840, Iint.getWidth()/2, Iint.getHeight()/2);
    vpHomogeneousMatrix cextMo(0,0,3, 0,0,0);
////////////////////////////////////////////////////////

			//This is where we simulate the robot moving to the desired position
			while(1){
			robot.getPosition(wMc);//robot updates its world frame position
			cMo = wMc.inverse() * wMo; //
			for (unsigned int i = 0 ; i < 4 ; i++) {
				point[i].track(cMo);
				vpFeatureBuilder::create(p[i], point[i]);
			}
		   	vpColVector v = task.computeControlLaw();
			robot.setVelocity(vpRobot::CAMERA_FRAME, v);
			
			vpDisplay::display(Iint) ;
		        vpDisplay::display(Iext) ;
  			display_trajectory(Iint, point, cMo, cam);
		        vpServoDisplay::display(task, cam, Iint, vpColor::green, vpColor::red);
		#if defined(VISP_HAVE_DISPLAY)
		        externalview.display(Iext, cextMo, cMo, cam, vpColor::red, true);
		#endif
		        vpDisplay::flush(Iint);
  		        vpDisplay::flush(Iext);
		        // A click to exit
		        if (vpDisplay::getClick(Iint, false) || vpDisplay::getClick(Iext, false))
		  	      break;
		        vpTime::wait( robot.getSamplingTime() * 1000);

		}
		task.kill();
		}
		catch(vpException e) {
			std::cout << "Catch an exception: " << e << std::endl;
		}
}

		
//////////////////--------- End of IBVS SIMULATION */		
	if (argc==2) {
		std::cout << "STARTING TO GRAB IMAGES" << std::endl;


		ros::init(argc, argv, "correll_image_converter");
		ImageConverter ic(argv[1]);

		//	Init the tracker
		//ic.init_the_edge_tracker(cv::imread("cubelets3_left_first_frame.png", CV_LOAD_IMAGE_COLOR)); 
		std::cout << "Test" << std::endl;
		ros::spin();
		return 0;
	} else {
		std::cout<<"ERROR:\tusage - baxter-video-listener /cameras/right_hand_camera/image"<<std::endl;
		return 1;
	} 
}

