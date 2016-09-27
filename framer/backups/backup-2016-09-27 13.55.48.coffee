# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: "NutritionUp"
	author: "Lois Yang"
	twitter: ""
	description: ""


# Import file "Screens- for David"
s = Framer.Importer.load("imported/Screens- for David@1x")

s.Start_Screen.x = 0
s.Start_Screen.y = 0
s.Food_Nutrient_Blueberry_Muffin.sendToBack()

#Onboarding screen (no animations)
s.NutritionUp.onTouchStart ->
	s.Start_Screen.sendToBack()
	s.Onboarding_1.x = 0
	s.Onboarding_1.y = 0
	Utils.delay .5, ->
		s.Onboarding_1.sendToBack()
		s.Onboarding_2.x = 0
		s.Onboarding_2.y = 0
	Utils.delay 1, ->
		s.Onboarding_2.sendToBack()
		s.Onboarding_3.x = 0
		s.Onboarding_3.y = 0

#Questionnaire screens
s.CTA.onTouchStart ->
	s.CTA.animate
		properties:
			opacity: 0.5
			scale: 0.75
		time: 0.2
		curve: "ease-in-out"

s.CTA.onTouchEnd ->
	s.Onboarding_3.sendToBack()
	s.CTA.animate
		properties:
			opacity: 1.0
			scale: 1.0
		time: 0.15
		curve: "ease-in-out"
	s.Q0.x = 0
	s.Q0.y = 0

s.Button_23.onTouchEnd ->
	s.Q0.sendToBack()
	s.Main.x = 0
	s.Main.y = 0
	bg = new BackgroundLayer
		backgroundColor: "#e6e6e6"
	bg.bringToFront()
	s.Main.bringToFront()
	s.Tab_Bar.bringToFront()
	
	s.Tab_Bar.y = 1334-98
	s.Tab_Bar.x = 0
	scrollFrame = new ScrollComponent
		height: 1334 - 98
		width: 750
	scrollFrame.scrollHorizontal = false
	s.ScrollContent.x = 0
	s.ScrollContent.scrollVertical = true
	s.ScrollContent.scrollHorizontal = false
	s.ScrollContent.directionLock = true
	s.ScrollContent.directionLockThreshold = y: 0
	s.ScrollContent.height = 1794-39
	s.ScrollContent.width = 750
	s.ScrollContent.superLayer = scrollFrame.content
	s.Status_Bar_Black4.bringToFront()


	
	
s.Button_13.onTouchStart ->
	s.Button_13.animate
		properties:
			opacity: 0.5
			scale: 0.75
		time: 0.2
		curve: "ease-in-out"

s.Button_13.onTouchEnd ->
	s.Q0.sendToBack()
	s.Q1.x = 0
	s.Q1.y = 0
	s.Button_active5.opacity = 0
	
s.Button_12.onTouchStart ->
	s.Button_12.animate
		properties:
			backgroundColor: "#93CCEA"
	s.Button_inactive5.opacity = 0
	s.Button_active5.opacity = 1
			
s.Button_active5.onTouchStart ->
	s.Button_active5.animate
		properties:
			opacity: 0.15
		
s.Button_active5.onTouchEnd ->
	s.Q1.sendToBack()
	s.Q2.x = 0
	s.Q2.y = 0
	s.Button_active4.opacity = 0
	
s.Active_Date.onTouchStart ->
	s.Cursor2.opacity = 0
	s.Button_inactive4.opacity = 0
	s.Button_active4.opacity = 1

s.Button_active4.onTouchStart ->
	s.Button_active4.animate
		properties:
			opacity: 0.15
			
s.Button_active4.onTouchEnd ->
	s.Q2.sendToBack()
	s.Q3.x = 0
	s.Q3.y = 0
	s.Button_active3.opacity = 0
	
s.Phone_Pad_Light1.onTouchStart ->
	s.Button_active3.opacity = 1
	s.Button_inactive3.opacity = 0
	
s.Button_active3.onTouchStart ->
	s.Button_active3.animate
		properties:
			opacity: 0.15
	
s.Button_active3.onTouchEnd ->
	s.Q3.sendToBack()
	s.Q4.x = 0
	s.Q4.y = 0
	s.Button_active2.opacity = 0

s.Phone_Pad_Light.onTouchStart ->
	s.Button_active2.opacity = 1
	s.Button_inactive2.opacity = 0
	s.Cursor.opacity = 0

s.Button_active2.onTouchStart ->
	s.Button_active2.animate
		properties:
			opacity: 0.15

s.Button_active2.onTouchEnd ->
	s.Q4.sendToBack()
	s.Q5.x = 0
	s.Q5.y = 0
	s.Button_active1.opacity = 0

s.Button_11.onTouchStart ->
	s.Button_11.animate
		properties:
			backgroundColor: "#93CCEA"
	s.Button_inactive1.opacity = 0
	s.Button_active1.opacity = 1

s.Button_active1.onTouchStart ->
	s.Button_active1.animate
		properties:
			opacity: 0.15

s.Button_active1.onTouchEnd ->
	s.Q5.sendToBack()
	s.Q6.x = 0
	s.Q6.y = 0
	s.Button_active.opacity = 0

s.Button_3.onTouchStart -> 
	s.Button_3.animate
		properties:
			backgroundColor: "#93CCEA"
	s.Button_inactive.opacity = 0
	s.Button_active.opacity = 1
	
s.Button_active.onTouchStart -> 
	s.Q6.sendToBack()
	s.Main.x = 0
	s.Main.y = 0
	# s.Main.onSwipeRight ->
# 	s.Main.opacity = 0
# 	s.Scan.x = 0
# 	s.Scan.y = 0
# 
# s.Main.onSwipeLeft ->
# 	s.Main.opacity = 0
# 	s.Screen.draggable = true
# 	s.Screen.x = 0
# 	s.Screen.y = 0

s.Color_Selector.onTouchEnd ->
	s.Scan.opacity = 0