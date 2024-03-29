.class public Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "RecommendAppsThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDisplayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentDisplayList:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setScrollWholeScreen(Z)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setPushGestureEnabled(Z)V

    const/16 p1, 0xa

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setScreenTransitionType(I)I

    const/4 p1, 0x6

    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setScreenLayoutMode(I)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->calculateFixedGap()V

    const/16 p1, 0xfa

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setScreenSnapDuration(I)V

    return-void
.end method

.method private installItem(Landroid/view/View;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 2

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 197
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->addRecommendAppToFolderWithDragAnimation(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->removeView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->skipNextAutoLayoutAnimation()V

    .line 202
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    return-void
.end method

.method private onDisplayViewChanged(I)V
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentDisplayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 132
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    move v2, p1

    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 134
    iget v3, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mVisibleRange:I

    rem-int v3, p1, v3

    sub-int v3, p1, v3

    if-lt v2, v3, :cond_4

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mVisibleRange:I

    add-int/2addr v3, p1

    if-ge v2, v3, :cond_4

    .line 136
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->trackRecommendAppsDisplayEvent(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;I)V

    .line 142
    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private trackRecommendAppsDisplayEvent(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 149
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFolderRecommendAdInfo(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mVisibleRange:I

    rem-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method calculateFixedGap()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070188

    goto :goto_0

    :cond_0
    const v1, 0x7f070187

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setFixedGap(I)V

    return-void
.end method

.method protected clearThumbnail(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAppStartDownload(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 175
    invoke-virtual {v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->installItem(Landroid/view/View;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 208
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailView;->onAttachedToWindow()V

    .line 209
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 161
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFilteredRecommendInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFilteredRecommendInfoList()Ljava/util/List;

    move-result-object v1

    .line 167
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getChildIndex(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    .line 166
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->handleClick(Ljava/util/List;IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailView;->onDetachedFromWindow()V

    .line 217
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->trackRecommendAppShow()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->calculateFixedGap()V

    :cond_0
    return-void
.end method

.method protected reLoadThumbnails()V
    .locals 5

    .line 74
    iget v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentScreenIndex:I

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 76
    :goto_0
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailView;->reLoadThumbnails()V

    .line 77
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-nez v4, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setCurrentScreen(I)V

    return-void
.end method

.method protected reorderAndAddAllViews(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->reorderAndAddAllViews(Ljava/util/ArrayList;)V

    return-void
.end method

.method public scrollToScreen(I)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->scrollToScreen(I)V

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->onDisplayViewChanged(I)V

    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 64
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentScreenIndex:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->onDisplayViewChanged(I)V

    .line 66
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->setVisibility(I)V

    return-void
.end method

.method public snapToAppView(Ljava/lang/String;)V
    .locals 2

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 186
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 188
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToScreen(I)I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public snapToNextScreen()V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentScreenIndex:I

    iget v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mVisibleRange:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToScreen(IIZ)I

    return-void
.end method

.method protected snapToScreen(IIZ)I
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;->snapToScreen(IIZ)I

    move-result p1

    .line 107
    iget p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mNextScreenIndex:I

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->onDisplayViewChanged(I)V

    .line 108
    iget p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mCurrentScreenIndex:I

    iget p3, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mNextScreenIndex:I

    if-eq p2, p3, :cond_0

    const-string p2, "snap"

    .line 109
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->trackRecommendAppShow()V

    :cond_0
    return p1
.end method

.method public trackRecommendAppShow()V
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getScreenCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getCurrentScreenIndex()I

    move-result v1

    .line 120
    div-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    add-int/2addr v1, v3

    if-le v1, v0, :cond_0

    .line 121
    rem-int/lit8 v3, v0, 0x4

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    .line 122
    invoke-static {v2, v3, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommendAppShow(IILcom/miui/home/launcher/FolderInfo;)V

    :cond_1
    return-void
.end method
