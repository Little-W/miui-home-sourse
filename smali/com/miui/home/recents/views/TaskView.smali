.class public Lcom/miui/home/recents/views/TaskView;
.super Lcom/miui/home/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;


# static fields
.field private static sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAccessLockView:Landroid/view/View;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFullscreenProgress:F

.field mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIgnoreTranslationWhenFindTouchView:Z

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mNotDockedTipView:Landroid/widget/TextView;

.field private mPrivacyProtectImageView:Landroid/widget/ImageView;

.field private mScreeningView:Landroid/view/View;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private final mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance p1, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {p1}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    .line 81
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    .line 107
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setClipChildren(Z)V

    .line 110
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private getMenuToTaskViewPosition()Lcom/miui/home/recents/util/RelativePosition;
    .locals 3

    .line 453
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 454
    new-instance v1, Lcom/miui/home/recents/util/RelativePosition;

    invoke-direct {v1}, Lcom/miui/home/recents/util/RelativePosition;-><init>()V

    .line 455
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    return-object v1
.end method

.method private updateContentDes(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100028

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bindTask(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 4

    .line 304
    iput-boolean p2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    .line 305
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 306
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 307
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;Z)V

    .line 308
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/miui/home/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {p2, v0, v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    const-string p2, "TaskView"

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskView bind task, task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean p2, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/16 v0, 0x8

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 312
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    if-nez p2, :cond_0

    const p2, 0x7f0a01c7

    .line 313
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    .line 315
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 317
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    iget-boolean v2, p1, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-eqz v2, :cond_5

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskView;->updateContentDes(Z)V

    return-void
.end method

.method public cancelTransformAnimation()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 3

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 437
    invoke-static {p1, v2, v2, v0, v1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullscreenProgress()F
    .locals 1

    .line 570
    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    return v0
.end method

.method public getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public getIgnoreTranslationWhenFindTouchView()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isAnimatingTo(Lcom/miui/home/recents/views/TaskViewTransform;)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 276
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->isSame(Lcom/miui/home/recents/views/TaskViewTransform;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public launchTask(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    const-string p1, "switchApp"

    .line 378
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public launchTask(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V

    return-void
.end method

.method public launchTask(ZZZ)V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_8

    .line 388
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setLastRotation(I)V

    .line 390
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getTopActivityUserId(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;)V

    return-void

    .line 396
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    const-wide/16 v3, 0x12c

    .line 399
    invoke-static {v0, v2, v3, v4}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 403
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/TaskView;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_5

    .line 412
    :try_start_0
    sget-object p2, Lcom/miui/home/recents/views/TaskView;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    if-nez p2, :cond_4

    const-string p2, "android.app.ActivityOptions"

    .line 413
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "setFreezeRecentTasksReordering"

    .line 414
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    sput-object p2, Lcom/miui/home/recents/views/TaskView;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    .line 416
    :cond_4
    sget-object p2, Lcom/miui/home/recents/views/TaskView;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 418
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    .line 422
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p3, v0, p1, p2, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    goto :goto_2

    .line 425
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p3, v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)V

    .line 429
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-nez p1, :cond_7

    goto :goto_3

    .line 430
    :cond_7
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :goto_3
    invoke-virtual {p3, v0, p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivityFromRecents(ILandroid/os/Bundle;)V

    :cond_8
    return-void
.end method

.method protected measureContents(II)V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 217
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 218
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/TaskView;->measureChildren(II)V

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 546
    invoke-super {p0}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onAttachedToWindow()V

    .line 547
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->registerEventBus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    .line 370
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_0

    const-string p1, "switchApp"

    .line 371
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ClickTaskViewEvent;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v0, v1}, Lcom/miui/home/recents/messages/ClickTaskViewEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 552
    invoke-super {p0}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onDetachedFromWindow()V

    .line 553
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->unregisterEventBus()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01c6

    .line 161
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    const v0, 0x7f0a01ca

    .line 162
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    const v0, 0x7f0a01c5

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    const v0, 0x7f0a01c9

    .line 164
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    const v0, 0x7f0a01c8

    .line 165
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setClipChildren(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 210
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLockedChanged(Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskView;->updateContentDes(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 444
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->getMenuToTaskViewPosition()Lcom/miui/home/recents/util/RelativePosition;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;-><init>(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/RelativePosition;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskId:I

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->updateBlurThumbnail(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method onReload(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 196
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    .line 328
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 335
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 336
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/miui/home/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    .line 343
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public registerEventBus()V
    .locals 1

    .line 533
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 251
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 252
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewHeader;->reset()V

    .line 259
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->reset()V

    .line 260
    invoke-static {p0}, Lcom/miui/home/recents/views/TaskViewTransform;->reset(Lcom/miui/home/recents/views/TaskView;)V

    .line 262
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    return-void
.end method

.method public setChildrenViewAlpha(F)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setAlpha(F)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 1

    .line 562
    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    .line 566
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public setHeaderTranslationAndAlpha(FFF)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationX(F)V

    .line 179
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 180
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    return-void
.end method

.method public setIgnoreTranslationWhenFindTouchView(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startDrag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterEventBus()V
    .locals 1

    .line 539
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->applyToTaskView(Lcom/miui/home/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 233
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    .line 241
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 242
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    :cond_1
    :goto_0
    return-void
.end method
