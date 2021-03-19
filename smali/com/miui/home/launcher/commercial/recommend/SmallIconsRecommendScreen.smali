.class public Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;
.super Landroid/widget/LinearLayout;
.source "SmallIconsRecommendScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

.field private mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field private mRecommendHeader:Landroid/widget/FrameLayout;

.field private mRecommendTitle:Landroid/widget/TextView;

.field private mRefresh:Landroid/widget/ImageView;

.field private mXOutImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private init()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->invalidate()V

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showOrHideRecommendScreenInner$0(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V
    .locals 3

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->allowConnectToNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowMarketConnectNetworkDialog()V

    .line 150
    invoke-static {v0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/market/sdk/MarketManager;->startUserAgreementActivity(Landroid/app/Activity;I)Z

    :cond_0
    return-void
.end method

.method private showOrHideRecommendScreenInner(Z)V
    .locals 5

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 142
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->onRecommendScreenVisibilityChanged(Z)V

    const-wide/16 v0, 0xc8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendHeaderRightIcon()V

    .line 146
    new-instance p1, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$SmallIconsRecommendScreen$__euekH80Ecjli-XWdVuC7zTP5s;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$SmallIconsRecommendScreen$__euekH80Ecjli-XWdVuC7zTP5s;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setTranslationY(F)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setAlpha(F)V

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private updateRecommendHeaderRightIcon()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isShowXOut()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 111
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    .line 112
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 325
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 326
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doRefresh()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isRequestWhenClickRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately()V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->count()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->refreshDisplayContents()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onDoRefreshWhenLowContent()V

    :goto_0
    return-void
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContent()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    return-object v0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 0

    return-object p0
.end method

.method public getRecommendTitle()Landroid/widget/TextView;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onAppStartDownload(Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->onAppStartDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0157

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a015a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onXOutClick()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 231
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 232
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, -0x3c4c0000    # -360.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string p1, "click_refresh"

    .line 234
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->doRefresh()V

    :goto_0
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isLoadingAnimationShortcutInfo(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    .line 300
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00cd

    .line 85
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a0159

    .line 87
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    const v0, 0x7f0a0157

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a015a

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0155

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public onFolderAlphaChange(F)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setAlpha(F)V

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRecommendGridPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setPadding(IIII)V

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080234

    .line 187
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setHeaderBgRes(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f080233

    .line 189
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setHeaderBgRes(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const v2, 0x7f1100bc

    const v3, 0x7f1100bd

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-void
.end method

.method public refreshDisplayContents()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToNextScreen()V

    return-void
.end method

.method setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setAlpha(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setHeaderBgRes(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 316
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public showOrHideRecommendScreen(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->init()V

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onFolderShowRecommends()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onFolderHideRecommends()V

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->showOrHideRecommendScreenInner(Z)V

    return-void
.end method

.method public snapToAppView(Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToAppView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
