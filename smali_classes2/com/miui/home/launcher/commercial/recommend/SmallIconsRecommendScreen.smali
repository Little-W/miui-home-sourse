.class public Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;
.super Landroid/widget/LinearLayout;
.source "SmallIconsRecommendScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


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

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private init()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->invalidate()V

    .line 249
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const v0, 0x7f110410

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private setViewLayoutParamsOfSoscSplit()V
    .locals 8

    .line 381
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 382
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 383
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 384
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070192

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07061e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    .line 384
    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 388
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 393
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 394
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->calculateFixedGap()V

    .line 395
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showOrHideRecommendScreenInner(Z)V
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 148
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->onRecommendScreenVisibilityChanged(Z)V

    const-wide/16 v0, 0xc8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendHeaderRightIcon()V

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getUnsafetyHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v4, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$SmallIconsRecommendScreen$__euekH80Ecjli-XWdVuC7zTP5s;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$SmallIconsRecommendScreen$__euekH80Ecjli-XWdVuC7zTP5s;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setVisibility(I)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setTranslationY(F)V

    .line 162
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setAlpha(F)V

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 174
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 182
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private updateRecommendAppsViewLayoutParams()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 214
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 215
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->calculateFixedGap()V

    .line 216
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecommendHeaderRightIcon()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isShowXOut()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateRecommendHeaderViewLayoutParams()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 221
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 223
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 225
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07061e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    .line 223
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 227
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 117
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 366
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 367
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doRefresh()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isRequestWhenClickRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->count()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->refreshDisplayContents()V

    goto :goto_0

    .line 293
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onDoRefreshWhenLowContent()V

    :goto_0
    return-void
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContent()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    return-object p0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 0

    return-object p0
.end method

.method public getRecommendTitle()Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public synthetic lambda$showOrHideRecommendScreenInner$0$SmallIconsRecommendScreen()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->allowConnectToNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowMarketConnectNetworkDialog()V

    .line 156
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, p0, v1}, Lcom/market/sdk/MarketManager;->startUserAgreementActivity(Landroid/app/Activity;I)Z

    :cond_0
    return-void
.end method

.method public onAppStartDownload(Ljava/lang/String;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->onAppStartDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02b2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02b5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onXOutClick()V

    goto :goto_0

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 272
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 273
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

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string p1, "click_refresh"

    .line 275
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->doRefresh()V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->onScreenSizeChanged()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isLoadingAnimationShortcutInfo(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    .line 341
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a017a

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a02b4

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    const v0, 0x7f0a02b2

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b5

    .line 99
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ad

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public onFolderAlphaChange(F)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setAlpha(F)V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenOrientationChanged()V
    .locals 2

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRecommendGridPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setPadding(IIII)V

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080694

    .line 192
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setHeaderBgRes(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f080693

    .line 194
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setHeaderBgRes(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->resetRecommendView()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 372
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setViewLayoutParamsOfSoscSplit()V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->resetRecommendView()V

    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const v1, 0x7f12013f

    const v2, 0x7f120140

    invoke-static {v0, p0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-void
.end method

.method public refreshDisplayContents()V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToNextScreen()V

    return-void
.end method

.method public resetRecommendView()V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendHeaderViewLayoutParams()V

    .line 232
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendAppsViewLayoutParams()V

    return-void
.end method

.method setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 264
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 352
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setAlpha(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setHeaderBgRes(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 357
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public showOrHideRecommendScreen(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->init()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onFolderShowRecommends()V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onFolderHideRecommends()V

    .line 141
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->showOrHideRecommendScreenInner(Z)V

    return-void
.end method

.method public snapToAppView(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToAppView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
