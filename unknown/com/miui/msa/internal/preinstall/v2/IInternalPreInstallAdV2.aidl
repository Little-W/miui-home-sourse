// IInternalPreInstallAdV2.aidl
package com.miui.msa.internal.preinstall.v2;

import java.util.List;
import com.miui.msa.internal.preinstall.v2.FolderInfo;
import com.miui.msa.internal.preinstall.v2.FolderRecommendAdInfo;
import com.miui.msa.internal.preinstall.v2.IImageCallback;
import com.miui.msa.internal.preinstall.v2.CNColudControlInfo;

interface IInternalPreInstallAdV2 {
    List<FolderRecommendAdInfo> loadDesktopRecommendAdInfo(in FolderInfo folderInfo);

    void loadImage(String url,in IImageCallback imageCallback);

    void handleView(in FolderRecommendAdInfo info,int position);

    void handleClick(in List<FolderRecommendAdInfo> infos,int appIndex,long folderId);

    void handleDislike(in FolderRecommendAdInfo info,int position);

    CNColudControlInfo getCNColudControl();
}
