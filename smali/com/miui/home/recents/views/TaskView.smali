.class public Lcom/miui/home/recents/views/TaskView;
.super Lcom/miui/home/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;,
        Lcom/miui/home/recents/views/TaskView$_lancet;
    }
.end annotation


# instance fields
.field private mAccessLockView:Landroid/view/View;

.field private mCb:Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;

.field private mClipViewInStack:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

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

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mClipViewInStack:Z

    .line 75
    new-instance p1, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {p1}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    .line 85
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    .line 109
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setClipChildren(Z)V

    .line 112
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateContentDes(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100028

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 140
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

    .line 323
    iput-boolean p2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    .line 324
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 325
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 326
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;Z)V

    .line 327
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/miui/home/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {p2, v0, v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    const-string p2, "TaskView"

    .line 328
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

    invoke-static {p2, v0}, Lcom/miui/home/recents/views/TaskView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean p2, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/16 v0, 0x8

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 331
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    if-nez p2, :cond_0

    const p2, 0x7f0a01c2

    .line 332
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    .line 334
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 336
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
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

    .line 339
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskView;->updateContentDes(Z)V

    return-void
.end method

.method public cancelTransformAnimation()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 3

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 457
    invoke-static {p1, v2, v2, v0, v1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getFullscreenProgress()F
    .locals 1

    .line 582
    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    return v0
.end method

.method public getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public getIgnoreTranslationWhenFindTouchView()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
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

    .line 586
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;
    .locals 1

    .line 317
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

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 283
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

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    const-string p1, "switchApp"

    .line 398
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public launchTask(ZZ)V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_7

    .line 404
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setLastRotation(I)V

    .line 406
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

    .line 408
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getTopActivityUserId(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;)V

    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 414
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    .line 418
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/TaskView;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    :try_start_0
    const-string p2, "android.app.ActivityOptions"

    .line 424
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "setFreezeRecentTasksReordering"

    .line 425
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 426
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 428
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, v0, p1, v1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    goto :goto_3

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p2, :cond_5

    :try_start_1
    const-string p2, "android.app.ActivityOptions"

    .line 437
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "setFreezeRecentTasksReordering"

    .line 438
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 439
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 441
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, v0, p1, v1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    .line 449
    :goto_3
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-nez p1, :cond_6

    goto :goto_4

    .line 450
    :cond_6
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :goto_4
    invoke-virtual {p2, v0, v1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivityFromRecents(ILandroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method protected measureContents(II)V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 216
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 217
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/TaskView;->measureChildren(II)V

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 558
    invoke-super {p0}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onAttachedToWindow()V

    .line 559
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->registerEventBus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    .line 390
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_0

    const-string p1, "switchApp"

    .line 391
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 392
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

    .line 564
    invoke-super {p0}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onDetachedFromWindow()V

    .line 565
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->unregisterEventBus()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01c1

    .line 162
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    const v0, 0x7f0a01c4

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    const v0, 0x7f0a01c0

    .line 164
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    const v0, 0x7f0a01c3

    .line 165
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setClipChildren(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
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

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLockedChanged(Z)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskView;->updateContentDes(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 464
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 382
    iget v0, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskId:I

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-boolean p1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->isDeterminedWhetherBlur:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/home/recents/views/TaskView;->onTaskSnapshotChanged(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 195
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 0

    .line 346
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    .line 347
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 354
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 355
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Z)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    if-nez p4, :cond_2

    .line 371
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    .line 376
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p4, v0, p2, p3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->updateBlurThumbnail(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    goto :goto_1

    .line 372
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    .line 373
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/miui/home/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    .line 362
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public registerEventBus()V
    .locals 1

    .line 545
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 259
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 260
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 262
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewHeader;->reset()V

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->reset()V

    .line 268
    invoke-static {p0}, Lcom/miui/home/recents/views/TaskViewTransform;->reset(Lcom/miui/home/recents/views/TaskView;)V

    .line 270
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    return-void
.end method

.method setCallbacks(Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mCb:Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;

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

    return-void
.end method

.method public setClipViewInStack(Z)V
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 305
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mClipViewInStack:Z

    .line 306
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mCb:Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;

    if-eqz p1, :cond_0

    .line 307
    invoke-interface {p1, p0}, Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/miui/home/recents/views/TaskView;)V

    :cond_0
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 1

    .line 574
    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    .line 578
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public setHeaderTranslationAndAlpha(FFF)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationX(F)V

    .line 178
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 179
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    return-void
.end method

.method public setIgnoreTranslationWhenFindTouchView(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 297
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

    .line 551
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->applyToTaskView(Lcom/miui/home/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 232
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    if-eqz p3, :cond_3

    .line 238
    invoke-interface {p3, v0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x2

    .line 242
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    .line 249
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 250
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
