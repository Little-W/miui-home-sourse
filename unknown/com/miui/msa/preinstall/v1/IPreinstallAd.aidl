package com.miui.msa.preinstall.v1;

// Declare any non-default types here with import statements

import com.miui.msa.preinstall.v1.PreinstallAdInfo;
import java.util.List;

interface IPreinstallAd {

   // more apps文件夹预装广告
   List<PreinstallAdInfo> getPreinstallAdInfos(int count);

   void handleView(in List<PreinstallAdInfo> infos);

   //是否起桌面动画
   boolean handleClick(in PreinstallAdInfo info);

   void handleDislike(in PreinstallAdInfo info);

   // tagId文件夹预装广告
   List<PreinstallAdInfo> getPreinstallAdInfosByTagId(int count,String tagId);

   void handleDislikeByTagId(in PreinstallAdInfo info,String tagId);

}
