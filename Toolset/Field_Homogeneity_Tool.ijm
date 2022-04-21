//-----------------------------------Parameters-----------------------------------

//**********SIMULATION**********
var w=256;
var h=256;
var xEllipse=w/4;
var yEllipse=h/2;
var majorEllipse=(maxOf(w, h))/2;
var angleEllipse=15;
var arEllipse=1/5;
var useRectangle=false;
var gaussBlurXSigma=(maxOf(w, h))*0.75;
var gaussBlurYSigma=(maxOf(w, h))*0.5;
var sdNoise=0.05;

//---------------------------------------------------------------------------------
macro "Simulation Action Tool - N66C348C3b7D04D84C298D01D41D51D61Da2Dd3C6c5D88Da9DcbDddC298D00D10D20D30D40D50D60D70D80D91Da1Db1Dc2Dd2De2C5c6D06D16D76Da7Dd9C298D71D81Db2De3C8b4D0bD1cDbdC288D90Da0Dc1Dd1C2b7D03D13Da4Dc5C2a7D63D73Db4Dd5De6C7c4D0aDcdC5c6D26D36D46D56D66D97Db8DdaDeaC2a8D12D22D32D42D52Dc4C9c3D4bC278C4b6D05D75Dc7C2a8D02D11D21D31D62D72D82D92Da3Db3Dc3Dd4De4De5C5c6D07DebC4b7D34D85Db6De8C8d4D39D3eD49D59D69D6aD79D9aDabC2a8D83D93C7d4D29D2eD89DaaDbbC5c6D45D86Dc8C9d3D6cC368C3b7D14D24D44D54D64D74D95Da5Dd7C6c5D08D17D27D47D77D87D98Da8DcaDdbDecDedDeeC4c6D25D35D55D96Db7Dd8De9C8c4D2dD3aDadC3b7D23D33D43D53D94Db5Dd6C7c5D09D0eD19D28D38D48D58D78D99DbaDccDdcDdeC9c3D5dD7bD7cC288Db0Dc0Dd0De1C6c5D18D37D57D67Db9C7c5D1eC9d4D3cD4cD5cD6dD7dD8dC268C3b7Dc6De7C4b6D15D65Da6C8b4DceC7c4D1dDbcC9c3D3bD5eC6c6Dc9C8d4D4eD5aD7aD8aD9bD9dC278De0C8c4D0cD1bC9c4D2bD2cD4aD8bC7d5D0dD68C368C8c4D2aD9eDaeDbeC9c3D3dD4dD5bD6bD6eD7eD8cD9cC278C9c4D8eDacC8c4D1aC358C348Bf0C348Da0C3b7D2aC298D59D6aD7cC6c5C298D03D14D24D35D46D57D68D79D8aD8bD8cD9dD9eC5c6D0cD1dD1eC298D04D25D36D47D58D69D7aD7bD8dD8eC8b4C288D02D13D23D34D45D56D66D67D77D78D89D9aD9bD9cDabDacDadDaeC2b7D4cC2a7D17D28D39D4bD5dD5eC7c4C5c6D0dD0eC2a8D27D38D5bC9c3C278D00D21D32D42D53D64D75D97Da8C4b6D2dC2a8D05D15D16D26D37D48D49D5aD6bD6cD6dD6eD7dD7eC5c6C4b7D09D1aD2cC8d4C2a8D06D4aD5cC7d4C5c6D0bC9d3C368D83Da5C3b7D08D2bD3eC6c5C4c6D0aD1cC8c4C3b7D07D18D29D3aD3bD3cD4dD4eC7c5C9c3C288D01D12D22D33D43D44D54D55D65D76D87D88D98D99DaaC6c5C7c5C9d4C268D30D41D51D62D73D94Da6C3b7D19D3dC4b6D1bD2eC8b4C7c4C9c3C6c6C8d4C278D11D86Da9C8c4C9c4C7d5C368D40D50D61D72D82D93Da4C8c4C9c3C278D10D20D31D52D63D74D84D85D95D96Da7C9c4C8c4C358D60D70D71D81D92Da3C358D80D91Da2C348D90Da1B0fC348C3b7C298D08D27D46D64D72D73C6c5C298D09D19D29D38D39D48D57D66D75D76D83D84D85D90D91D92D93C5c6D01C298D18D28D37D47D56D65D74D80D81D82C8b4C288D0aD1aD2aD49D58D67D68D77D86D94D95Da0Da1Da2Da3C2b7D15D33D42C2a7D06D25D34D43D50D51D52C7c4C5c6D00C2a8D35D44D53D60D61C9c3C278D6aD7aD89D98Da7C4b6D12D20C2a8D07D17D26D36D45D54D55D62D63D70D71C5c6C4b7D21C8d4C2a8D16C7d4C5c6D10C9d3C368C3b7D04D13D22D30C6c5C4c6D02D11C8c4C3b7D05D24D32D40D41C7c5C9c3C288D3aD4aD59D69D78D87D96D97Da4Da5Da6C6c5C7c5C9d4C268DaaC3b7D14D23D31C4b6D03C8b4C7c4C9c3C6c6C8d4C278D5aD79D88C8c4C9c4C7d5C368C8c4C9c3C278D8aD99D9aDa8Da9C9c4C8c4C358C348Nf0C348C3b7Db6C298D07D79D99Da9Db9Dc9C6c5D10D21D62Db2C298D08D29D39D49D6aD7aD8aD9aDaaDbaDcaDdaDeaC5c6D23D54D64Da4C298D18D28D59D69D89Dd9De9C8b4C288D09D19D2aD3aD4aD5aC2b7D87Da7De6C2a7D05D26D57D67D77D97Db7Dc7C7c4C5c6D01D12D33D74D84D94Dc3Dd3De1De2C2a8D37De7C9c3C278C4b6D03D24D65D75D85Da5Dd4De4C2a8D06D17D27D38D48D58D68D78D88D98Da8Db8Dc8Dd8De8C5c6D43Dd2C4b7D14D45D55Db5Dc5C8d4D40D50C2a8D16D47Dd7C7d4D30D61D71D81D91Da1C5c6D44Db4C9d3C368C3b7D04D35D76D86D96Dd5C6c5D00D22D53D63D73D93Da3Dc2Dd1De0C4c6D02D13Dc4De3C8c4D80D90C3b7D15D25D36D46D56Dc6Dd6C7c5D31D52D72D82D92Da2Dc0Dc1C9c3C288D1aC6c5D11D32D42D83Dd0C7c5D20C9d4C268C3b7D66Da6De5C4b6D34D95C8b4C7c4C9c3C6c6Db3C8d4D60D70C278D0aC8c4Da0C9c4C7d5D41D51Db1C368C8c4C9c3C278C9c4C8c4Db0C358C348"{
	simGUI();
	createSimulatedImage();
}

macro "Analysis Action Tool - N66C348C567C2a7D73D83Db4C9b4D0bC298D31D41D92C4c6D15D25D35D75Db7De9C3a7Caa3C288D70D80D90Da0Db1De2C5c5D34C298D51D61D71D81Da2Db2C8d4D1eD29D2eD39D79D98Da9Dc8Dd7C497C7d4D19D38D48D56D58D68D87Dc7C4a6Ccd2D4dDceC278C5b6D23C2a8D02D62D72D82Da3Db3De4C8d4D3eD49D59D67D69D8aD9bDbaDc9Dd8C298D20D30D40D50D60D91Da1De3C6c5D08D37C2a8D93Cbe2D2dD3cD4cD5cD66DadDdbDebDedC487C6c5Dc4C2a8D42D52De5C9d3DdaC397C7c5C3b7D04D14D24D64Da5Ccd2D5dDbdC368C5a6Dc1C9d3D4eD5aC6c5D07D46D65Db9C3b7D13D53D94Db5De6Cad3C5b6D43C7d5C497C7c5D09D0eD18D28D47D57D76Dc6Dd6DeaC4b6D05Cbe2D6cD77D8dD9dDbcDeeC288Db0De1C5b6Dc2C9d4D11D6aD7aC6c5D17D27D45Da8Cad3DacC6c5C9d3D33D89D9aDabC7d5C4b7D95Db6De8Cce1C268C587C9c3D8eC5c6D96C2b7D03D63Da4Cac3D5bD6bD7eC5c6D06D16D26D36D54Da7Db8C4b6Cbe2D7dDdeC278De0C4b6D85Da6C9d4D78DcaCce2D88D99DaaDbbC278C7a5Dd0C9c4D2bD8bC5c6D97Cac3D4bC4b7Cbe3DcbC6b5Dd3Cad3C6c5Dc5Dd4Cff0DcdC368C577C8c4D1aC3b7D74De7Cab4C5c6D86C4a7D10Cbc2D9cC8d4Dd9Cce2D6dC6a6Dc0C9d3D22DaeCad3D44C5b6Dc3Cae3D1dD55DecC7c5Dd5Cce2DbeC597C9c4D2aCac3D6eC4b6D12D32Cbd2D3dD7cC6b5Dd2Cad3D00C6b6Cef0DdcDddC358C567C9c3D3aD4aC3a7Caa4C4a6C4a7Cbc2D1cCae3D0dC497C9c3D3bD5eD7bD9eC6a5Dd1C487C8c4D1bC9b4C4a7D01D21Cbd2D8cCbd2D2cCef0DccC597C9c4C358C487C577C3b7D84Cab3C4a7Cad3D0cC587C8c4D0aBf0C348D80Da2C567D90Da1C2a7D17D39D4aD4bD5eC9b4C298D15D59D6aD7eC4c6D1bC3a7Caa3Da0C288D02D13D24D34D66D67D78D89D8aD9bDaeC5c5C298D04D58D69D7bD8eC8d4D1cD2dC497D45C7d4D3dC4a6Ccd2C278D01D22D43D76D87D98DaaC5b6C2a8D05D16D26D48D49D5aD5bD6bD6eC8d4D0cD1dC298D03D14D25D35D57D68D79D7aD8bD9eC6c5D3cC2a8D06Cbe2C487C6c5D09D1aD5cC2a8C9d3C397C7c5C3b7D2bD3eCcd2C368D41C5a6D9cC9d3D37C6c5C3b7D07D3bD4eCad3C5b6D18C7d5C497C7c5D0bD2cD4dD5dC4b6Cbe2C288D12D23D33D44D77D88D99D9aDabC5b6D7cD8cC9d4C6c5Cad3C6c5D6dC9d3D28C7d5D0eC4b7Cce1C268D20D31D52D84D95Da6C587D74C9c3C5c6C2b7D3aCac3C5c6D29C4b6D27Cbe2C278D11D32D75D86Da9C4b6D2eC9d4D0dCce2C278D00D10D21D42D53D85D96D97Da7Da8C7a5C9c4D46C5c6Cac3C4b7Cbe3C6b5D7dD8dCad3D19C6c5D4cCff0C368D30D40D51D62D94Da5C577D92C8c4C3b7D08D2aCab4D82C5c6D1eC4a7Cbc2C8d4Cce2C6a6DacC9d3Cad3C5b6D6cCae3D0aC7c5Cce2C597C9c4Cac3C4b6D38Cbd2C6b5D9dDadCad3C6b6Cef0C358D50D61D71D93Da4C567D81C9c3C3a7Caa4D91C4a6C4a7D56Cbc2Cae3C497D54D65C9c3C6a5C487D63C8c4C9b4D73C4a7D36Cbd2Cef0C597C9c4D55D64C358D60D70Da3C487C577D72D83C3b7Cab3C4a7D47Cad3C587C8c4B0fC348C567C2a7D06D25D42D50D51C9b4C298D08D46D64D71D72C4c6C3a7Caa3C288D0aD1aD29D39D49D58D68D85D86D92D93D94D95Da0Da1Da2C5c5C298D18D37D47D73D74D80D81C8d4C497C7d4C4a6D67Ccd2C278Da6C5b6D32D34C2a8D07D17D27D36D61D62D63D70C8d4C298D09D19D28D38D48D57D75D82D83D84D90D91C6c5C2a8D16D35D52D53Cbe2D00C487D98C6c5D23C2a8D26D60C9d3C397D76C7c5C3b7D04D30D31Ccd2C368C5a6C9d3C6c5C3b7D05D15D24D40D41Cad3C5b6D45C7d5C497D87C7c5C4b6D20Cbe2C288D2aD3aD4aD59D69D96Da3Da4Da5C5b6C9d4D55C6c5D10D12Cad3C6c5C9d3D33C7d5D01C4b7D13Cce1C268C587C9c3C5c6D02C2b7Cac3C5c6D21C4b6Cbe2C278D5aD6aD79D97C4b6D03D43C9d4Cce2C278D7aD8aDa7Da8C7a5C9c4D66C5c6Cac3C4b7D54Cbe3C6b5Cad3C6c5Cff0C368C577C8c4C3b7D14Cab4C5c6C4a7Cbc2C8d4Cce2C6a6C9d3D44Cad3D22C5b6Cae3D11C7c5Cce2C597D89C9c4D77Cac3C4b6Cbd2C6b5Cad3C6b6Cef0C358C567C9c3C3a7D65Caa4C4a6D56C4a7Cbc2Cae3C497C9c3C6a5C487C8c4C9b4D99C4a7Cbd2Cef0C597D78C9c4D88C358C487Da9C577C3b7Cab3DaaC4a7Cad3C587D9aC8c4Nf0C348C567C2a7D26D57D67D77De6C9b4C298D07D89C4c6D34D75D85D95C3a7D18Caa3C288D2aD3aD4aD5aD6aDeaC5c5C298D69D79D99Da9Db9C8d4D20D30D51D61D63D83Dc4Dd4De0C497C7d4D41Db1Dd5C4a6Ccd2C278C5b6D47C2a8D06D17D48D58D68D78D88D98Da8Db8De8C8d4D40D71D72Dc3C298D08D39D49D59D7aD8aD9aDaaDbaDe9C6c5D00Db2Dc6C2a8D16Cbe2D64C487C6c5Dc7C2a8De7C9d3C397D09C7c5Dc5C3b7D25D35D76D86D96De5Ccd2C368C5a6DcaC9d3D80C6c5D22D43D53Da3Db3De1C3b7D05D15D87Cad3Dc0C5b6C7d5D31D62D74C497C7c5D10D21D42D52D54Da2Dd6C4b6D03D24Db5De4Cbe2D73C288C5b6Dc9C9d4D28D50D60D70C6c5D11D32D65D93Cad3C6c5C9d3D46D81Da1Dc1Dd1C7d5C4b7D14Cce1Da0C268C587C9c3C5c6D13De3C2b7D97Da7Db7Cac3C5c6D12D23D33D45D56D94De2C4b6Cbe2C278C4b6D36Da5C9d4D92Dc2Dd2Cce2D82D91C278C7a5C9c4D19C5c6D01D84Cac3D0aC4b7D27Cbe3C6b5Dd9Cad3Dd0C6c5Dd8Cff0C368C577C8c4C3b7D04D66Da6Db6Cab4C5c6D02D44Da4Db4C4a7Cbc2C8d4Dd3Cce2C6a6C9d3D37Db0Cad3C5b6Cae3C7c5Dd7Cce2C597C9c4Cac3C4b6D38Cbd2C6b5DdaCad3D90C6b6Dc8Cef0C358C567C9c3C3a7Caa4C4a6D29C4a7Cbc2Cae3D55C497C9c3C6a5C487C8c4C9b4C4a7Cbd2Cef0C597D1aC9c4C358C487C577C3b7Cab3C4a7Cad3C587C8c4"{
	Table.create("Field Analysis");
	getROIsAndFit();
	createPolygonFromCenters();
	getCentersInPolygon();
	roiManager("Show All");	
}





//---------------------------------------------------------------------------------
function simGUI(){
	Dialog.create("Simulation");
	Dialog.addNumber("Image_width", w);
	Dialog.addNumber("Image_height", h);
	Dialog.addNumber("Ellipse_center_x", xEllipse);
	Dialog.addNumber("Ellipse_center_y", yEllipse);
	Dialog.addNumber("Ellipse_major_axis_length", majorEllipse);
	Dialog.addSlider("Ellipse_major_axis_angle", 0, 90, angleEllipse);
	Dialog.addSlider("Ellipse_aspectRatio", 0, 1, arEllipse);
	Dialog.addCheckbox("Use_a_rectangle_instead_of_ellipse", useRectangle);
	Dialog.addNumber("Gaussian_blur_x_sigma", gaussBlurXSigma);
	Dialog.addNumber("Gaussian_blur_y_sigma", gaussBlurYSigma);
	Dialog.addSlider("Noise_SD", 0, 1, sdNoise);
	Dialog.show();


	w=Dialog.getNumber();
	h=Dialog.getNumber();
	xEllipse=Dialog.getNumber();
	yEllipse=Dialog.getNumber();
	majorEllipse=Dialog.getNumber();
	angleEllipse=Dialog.getNumber();
	arEllipse=Dialog.getNumber();
	useRectangle=Dialog.getCheckbox();
	gaussBlurXSigma=Dialog.getNumber();
	gaussBlurYSigma=Dialog.getNumber();
	sdNoise=Dialog.getNumber();
}

//---------------------------------------------------------------------------------
function createSimulatedImage(){
	setBatchMode(true);
	newImage("Simulated", "32-bit black", w, h, 1);
	drawIlluminationRoi(xEllipse, yEllipse, majorEllipse, angleEllipse, arEllipse);
	
	//Performs rotation before and after gaussian blur to keep the directionality of the original beam
	run("Rotate... ", "angle="+(-angleEllipse)+" grid=1 interpolation=Bilinear enlarge");
	run("Gaussian Blur 3D...", "x="+gaussBlurXSigma+" y="+gaussBlurYSigma+" z=0");
	run("Rotate... ", "angle="+angleEllipse+" grid=1 interpolation=Bilinear enlarge");
	run("Specify...", "width="+w+" height="+h+" x="+(getWidth/2)+" y="+(getHeight/2)+" centered");
	run("Crop");
	
	//Normalize max to 1
	getStatistics(area, mean, min, max, std, histogram);
	run("Multiply...", "value="+(1/max));
	run("Enhance Contrast", "saturated=0.35");
	
	//Add noise
	run("Add Specified Noise...", "standard="+sdNoise);
	
	//Add some colors
	run("mpl-viridis");
	
	//Add all parameters as a metadata in the info field of the image
	setMetadata4Sim();

	setBatchMode("exit and display");
}

//---------------------------------------------------------------------------------
function drawIlluminationRoi(xEllipse, yEllipse, majorEllipse, angleEllipse, arEllipse){
	x1=xEllipse-(majorEllipse/2)*cos(angleEllipse*PI/180);
	y1=yEllipse-(majorEllipse/2)*sin(angleEllipse*PI/180);
	x2=xEllipse+(majorEllipse/2)*cos(angleEllipse*PI/180);
	y2=yEllipse+(majorEllipse/2)*sin(angleEllipse*PI/180);

	makeEllipse(x1, y1, x2, y2, arEllipse);
	if(useRectangle) makeRotatedRectangle(x1, y1, x2, y2, majorEllipse);
	Roi.setStrokeColor("red");
	Roi.setName("Ellipse");
	if(useRectangle) Roi.setName("Rectangle");
	
	//Add selection to image overlay
	run("Add Selection...");
	
	setForegroundColor(255, 255, 255);
	run("Fill", "slice");
	run("Select None");
}

//---------------------------------------------------------------------------------
function setMetadata4Sim(){
	string="---------------------------------------\n";
	string+="Simulated field homogeneity check image\n";
	string+="w="+w+"\n";
	string+="h="+h+"\n";
	string+="xEllipse="+xEllipse+"\n";
	string+="yEllipse="+yEllipse+"\n";
	string+="majorEllipse="+majorEllipse+"\n";
	string+="angleEllipse="+angleEllipse+"\n";
	string+="arEllipse="+arEllipse+"\n";
	string+="useRectangle="+useRectangle+"\n";
	string+="gaussBlurXSigma="+gaussBlurXSigma+"\n";
	string+="gaussBlurYSigma="+gaussBlurYSigma+"\n";
	string+="sdNoise="+sdNoise+"\n";
	string+="---------------------------------------\n";
	setMetadata("Info", string);
}

//---------------------------------------------------------------------------------
function getROIsAndFit(){
	roiManager("Reset");
	w=getWidth();
	h=getHeight();

	names=newArray("Upper Left-Lower Right", "Vertical", "Upper Right- Lower Left", "Horizontal");
	x=newArray(0, round(w/2), w-1, w-1, w-1, round(w/2), 0, 0);
	y=newArray(0, 0, 0, round(h/2), h, h, h, round(h/2));

	for(i=0; i<x.length/2; i++){
		makeLine(x[i], y[i], x[i+4], y[i+4]);
		Roi.setName(names[i]);
		roiManager("Add");
		values=plotAndFit();

		//Compute the XY position of the center from fitting
		angle=atan2(y[i+4]-y[i], x[i+4]-x[i]);
		xCenter=x[i]+values[0]*cos(angle);
		yCenter=y[i]+values[0]*sin(angle);
		
		rowIndex=Table.size-1;
		Table.set("X_Center", rowIndex, xCenter);
		Table.set("Y_Center", rowIndex, yCenter);
	}
}

//---------------------------------------------------------------------------------
function plotAndFit(){
	//Perform the plot along a pre-existing line and retrieve the plotted values
	roiName=Roi.getName;
	
	run("Plot Profile");
	Plot.getValues(xpoints, ypoints);
	close();
	
	//Force some initial values to ease the fitting
	Array.getStatistics(ypoints, min, max, mean, stdDev);
	a=min;
	b=max;
	c=xpoints[xpoints.length/2];
	d=(xpoints[0]+xpoints[xpoints.length-1])/2;
	initialGuesses=newArray(a, b, c, d);

	//Perform fitting
	Fit.doFit("y = a + (b-a)*exp(-(x-c)*(x-c)/(2*d*d))", xpoints, ypoints, initialGuesses);
	
	//Retrieve and pack the output values
	center=Fit.p(2);
	d=Fit.p(3);
	fwhm=2*sqrt(2*log(2))*d;
	r2=Fit.rSquared;

	rowIndex=Table.size;
	Table.set("Profile", rowIndex, roiName);
	Table.set("Center_on_profile", rowIndex, center);
	Table.set("FWHM", rowIndex, fwhm);
	Table.set("Fitting_R2", rowIndex, r2);

	return newArray(center, fwhm, r2);
}

//---------------------------------------------------------------------------------
function createPolygonFromCenters(){
	run("Select None");
	getStatistics(areaImg, mean, min, max, std, histogram);
	
	xpoints=Table.getColumn("X_Center");
	ypoints=Table.getColumn("Y_Center");
	makeSelection("polygon", xpoints, ypoints);
	//run("Convex Hull");
	Roi.setStrokeColor("cyan");
	Roi.setName("Polygon Center");
	roiManager("Add");

	getStatistics(area, mean, min, max, std, histogram);
	Table.set("Profile", Table.size, "---");
	Table.set("Profile", Table.size, "Polygon_Area");
	Table.set("Pct_Center_Polygon_Area", Table.size-1, area/areaImg);
}

//---------------------------------------------------------------------------------
function getCentersInPolygon(){
	//Retrieve the image calibration
	getPixelSize(unit, pixelWidth, pixelHeight);
	
	//The polygonal ROI is supposed to be the 5th in the ROI Manager: activate it
	roiManager("Select", 4);

	//Retrieve the geometrical and intensity-weighted center's coordinates
	List.setMeasurements;
	x=List.getValue("X")/pixelWidth;
	y=List.getValue("Y")/pixelHeight;
	xm=List.getValue("XM")/pixelWidth;
	ym=List.getValue("YM")/pixelHeight;

	//Find the point of max intensity within the polygonal ROI
	getStatistics(area, mean, min, max, std, histogram);
	setThreshold(max, max);
	run("Create Selection");
	List.setMeasurements;
	xmax=List.getValue("X")/pixelWidth;
	ymax=List.getValue("Y")/pixelHeight;
	resetThreshold;

	//Add some colors
	run("mpl-viridis");


	//Log data
	Table.set("Profile", Table.size, "---");
	Table.set("Profile", Table.size, "Geometrical_center_in_polygon");
	Table.set("X_Center_(pixels)", Table.size-1, x);
	Table.set("Y_Center_(pixels)", Table.size-1, y);
	Table.set("Profile", Table.size, "Intensity-weighted_center_in_polygon");
	Table.set("X_Center_(pixels)", Table.size-1, xm);
	Table.set("Y_Center_(pixels)", Table.size-1, ym);
	Table.set("Profile", Table.size, "Max_intensity_center_in_polygon");
	Table.set("X_Center_(pixels)", Table.size-1, xmax);
	Table.set("Y_Center_(pixels)", Table.size-1, ymax);

	//Add ROIs to the ROI Manager
	makePoint(x, y, "xxxl magenta circle");
	Roi.setName("Geometrical_center_in_polygon");
	roiManager("Add");

	makePoint(xm, ym, "xxxl blue circle");
	Roi.setName("Intensity-weighted_center_in_polygon");
	roiManager("Add");

	makePoint(xmax, ymax, "xxxl green circle");
	Roi.setName("Max_intensity_center_in_polygon");
	roiManager("Add");
}