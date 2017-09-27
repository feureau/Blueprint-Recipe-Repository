package com.epicgames.ue4;

import com.YourCompany.PinchBugDemonstrator.OBBDownloaderService;
import com.YourCompany.PinchBugDemonstrator.DownloaderActivity;


public class DownloadShim
{
	public static OBBDownloaderService DownloaderService;
	public static DownloaderActivity DownloadActivity;
	public static Class<DownloaderActivity> GetDownloaderType() { return DownloaderActivity.class; }
}

