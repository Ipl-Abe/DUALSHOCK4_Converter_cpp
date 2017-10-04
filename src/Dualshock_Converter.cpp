// -*- C++ -*-
/*!
 * @file  Dualshock_Converter.cpp
 * @brief ModuleDescription
 * @date $Date$
 *
 * $Id$
 */

#include "Dualshock_Converter.h"

int servo1_angle = 90;

// Module specification
// <rtc-template block="module_spec">
static const char* dualshock_converter_spec[] =
{
	"implementation_id", "Dualshock_Converter",
	"type_name", "Dualshock_Converter",
	"description", "ModuleDescription",
	"version", "1.0.0",
	"vendor", "UoA",
	"category", "Controlle",
	"activity_type", "PERIODIC",
	"kind", "DataFlowComponent",
	"max_instance", "1",
	"language", "C++",
	"lang_type", "compile",
	""
};
// </rtc-template>

/*!
 * @brief constructor
 * @param manager Maneger Object
 */
Dualshock_Converter::Dualshock_Converter(RTC::Manager* manager)
// <rtc-template block="initializer">
: RTC::DataFlowComponentBase(manager),
m_buttonIn("Button", m_button),
m_servo1Out("Servo1", m_servo1),
m_servo2Out("Servo2", m_servo2),
m_servo3Out("Servo3", m_servo3)

// </rtc-template>
{
}

/*!
 * @brief destructor
 */
Dualshock_Converter::~Dualshock_Converter()
{
}



RTC::ReturnCode_t Dualshock_Converter::onInitialize()
{
	// Registration: InPort/OutPort/Service
	// <rtc-template block="registration">
	// Set InPort buffers
	addInPort("Button", m_buttonIn);

	// Set OutPort buffer
	addOutPort("Servo1", m_servo1Out);
	addOutPort("Servo2", m_servo2Out);
	addOutPort("Servo3", m_servo3Out);

	// Set service provider to Ports

	// Set service consumers to Ports

	// Set CORBA Service Ports

	// </rtc-template>

	// <rtc-template block="bind_config">
	// </rtc-template>
	
	//m_servo1.data = 90;


	return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t Dualshock_Converter::onFinalize()
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t Dualshock_Converter::onStartup(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t Dualshock_Converter::onShutdown(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/


RTC::ReturnCode_t Dualshock_Converter::onActivated(RTC::UniqueId ec_id)
{
	std::cout << "active" << std::endl;
	return RTC::RTC_OK;
}


RTC::ReturnCode_t Dualshock_Converter::onDeactivated(RTC::UniqueId ec_id)
{
	return RTC::RTC_OK;
}


RTC::ReturnCode_t Dualshock_Converter::onExecute(RTC::UniqueId ec_id)
{
	int button = 0;
	float button1val = 0;
	float buttondata = 0;
	//m_servo1.data = 55;
	if (m_buttonIn.isNew()){

		buttondata = m_buttonIn.read();
		button = m_button.data;
		//button1val = 0
		//print "button : ", button

		std::cout << "test1 : "<<button << std::endl;
		//std::cout << "button & 2 : " << (button & 0x08) << std::endl;
		if ((button & 0x02) == 2){
			std::cout << "2" << std::endl;
			//button1val = 10;
			servo1_angle += 10;
			//m_servo1.data = 0;
			if (servo1_angle >= 100){
				servo1_angle = 100;
			}
		}
		//else{

		//}

		else if ((button & 0x08) == 8){
			std::cout << "8" << std::endl;
			//button1val = 10;
			servo1_angle -= 10;
			if (servo1_angle <= 20){
				servo1_angle = 20;
			}
			//m_servo1.data = servo1_angle;
		}

		//if bin(button & 0x08) == bin(8) :
		//	print "8"
		//	button1val = -10
		//	#self._Servo1Out.write()

		else{
			
			//m_servo1.data = 55;
		}

			m_servo1.data = servo1_angle;
			//#OpenRTM_aist.setTimestamp(self._d_servo1.tm)
			//#p = self._d_servo1.tm
			//#print "test2 ", p
			//self._d_servo1.data = float(button1val)
			//print "test3", float(button1val)
		std::cout << "value : " << m_servo1.data << std::endl;
			m_servo1Out.write();

	}
	return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t Dualshock_Converter::onAborting(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t Dualshock_Converter::onError(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t Dualshock_Converter::onReset(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t Dualshock_Converter::onStateUpdate(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t Dualshock_Converter::onRateChanged(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/



extern "C"
{

	void Dualshock_ConverterInit(RTC::Manager* manager)
	{
		coil::Properties profile(dualshock_converter_spec);
		manager->registerFactory(profile,
			RTC::Create<Dualshock_Converter>,
			RTC::Delete<Dualshock_Converter>);
	}

};


