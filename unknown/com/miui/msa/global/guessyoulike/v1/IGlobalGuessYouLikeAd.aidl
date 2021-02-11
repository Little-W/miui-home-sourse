// IGlobalGuessYouLikeAd.aidl
package com.miui.msa.global.guessyoulike.v1;

import java.util.List;
import com.miui.msa.global.guessyoulike.v1.GlobalFolderInfo;
import com.miui.msa.global.guessyoulike.v1.GlobalFolderRecommendAdInfo;
import com.miui.msa.global.guessyoulike.v1.IGlobalImageCallback;
import com.miui.msa.global.guessyoulike.v1.GlobalColudControlInfo;

interface IGlobalGuessYouLikeAd {

    List<GlobalFolderRecommendAdInfo> loadDesktopRecommendAdInfo(in GlobalFolderInfo folderInfo);

    void loadImage(String url,in IGlobalImageCallback imageCallback);

    void handleView(in GlobalFolderRecommendAdInfo info,int position);

    void handleClick(in List<GlobalFolderRecommendAdInfo> infos,int appIndex,long folderId);

    void handleDislike(in GlobalFolderRecommendAdInfo info,int position);

    GlobalColudControlInfo getGlobalColudControl();

    List<String> getGameFolders(in Map folders,boolean isNotFirst);
}
