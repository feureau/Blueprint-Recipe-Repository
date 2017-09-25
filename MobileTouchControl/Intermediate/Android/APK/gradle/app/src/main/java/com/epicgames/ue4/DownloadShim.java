package com.epicgames.ue4;

import com.YourCompany.MobileTouchControl.OBBDownloaderService;
import com.YourCompany.MobileTouchControl.DownloaderActivity;


public class DownloadShim
{
	public static OBBDownloaderService DownloaderService;
	public static DownloaderActivity DownloadActivity;
	public static Class<DownloaderActivity> GetDownloaderType() { return DownloaderActivity.class; }
}

