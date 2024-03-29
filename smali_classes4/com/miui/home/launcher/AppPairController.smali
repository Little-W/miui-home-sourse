.class public Lcom/miui/home/launcher/AppPairController;
.super Ljava/lang/Object;
.source "AppPairController.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPairIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mPairIntentMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/miui/home/launcher/AppPairController$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/AppPairController$1;-><init>(Lcom/miui/home/launcher/AppPairController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AppPairController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/AppPairController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindowWithAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/AppPairController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/AppPairController;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/AppPairController;)Lcom/miui/home/launcher/view/AppPairStartView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    return-object p0
.end method

.method private addAppPairStartWindow(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 9

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7eb

    const v5, 0xc000400

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x11

    .line 130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "app_pair_start_window"

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 132
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 134
    new-instance v1, Lcom/miui/home/launcher/view/AppPairStartView;

    iget-object v2, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/view/AppPairStartView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    .line 135
    iget-object v3, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    iget-object v4, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/view/AppPairStartView;->initView(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 138
    iget-object p1, p0, Lcom/miui/home/launcher/AppPairController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addForegroundWindowListener(Ljava/lang/String;)V
    .locals 2

    .line 99
    new-instance v0, Lcom/miui/home/launcher/AppPairController$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/AppPairController$2;-><init>(Lcom/miui/home/launcher/AppPairController;Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    .line 113
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private hasPairTaskHistory(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3

    .line 300
    :try_start_0
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p2

    .line 301
    invoke-static {p4}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p4

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 307
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 308
    invoke-direct {p0, v2, p1, p2}, Lcom/miui/home/launcher/AppPairController;->isSameTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v1, p3, p4}, Lcom/miui/home/launcher/AppPairController;->isSameTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AppPairController"

    const-string p2, "hasPairTaskHistory fail : "

    .line 313
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSameTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/ComponentName;I)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne p1, p3, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private isSupportAppPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 4

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    const-string v0, "AppPairController"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "Do not support app pair in multi window mode."

    .line 229
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 234
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->supportsSplitScreen(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 237
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->supportsSplitScreen(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p0

    goto :goto_1

    :cond_2
    move p2, v1

    .line 239
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAppPair primarySupportSplit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pairSupportSplit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    return p0
.end method

.method public static synthetic lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private realStartPrimaryActivity(Landroid/content/Intent;Landroid/content/ComponentName;Landroid/app/ActivityOptions;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 267
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/miui/home/launcher/AppPairController;->hasPairTaskHistory(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p2

    .line 268
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "startPrimaryActivity hasPairTaskHistory = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "AppPairController"

    invoke-static {p6, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    .line 270
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p3

    :cond_0
    if-eqz p2, :cond_1

    .line 275
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p5, 0x0

    new-array p6, p5, [Ljava/lang/Class;

    new-array p5, p5, [Ljava/lang/Object;

    const-string v0, "setEnterAppPairFromShortCut"

    invoke-static {p3, p2, v0, p6, p5}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, p1, p2, p4}, Lcom/miui/launcher/utils/LauncherUtils;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private removeAppPairStartWindow()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->clean()V

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeAppPairStartWindowWithAnim()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 146
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    new-instance v1, Lcom/miui/home/launcher/AppPairController$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/AppPairController$3;-><init>(Lcom/miui/home/launcher/AppPairController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    new-instance v1, Lcom/miui/home/launcher/AppPairController$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/AppPairController$4;-><init>(Lcom/miui/home/launcher/AppPairController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$AppPairController$ormGp-hh9OtfOhs5ymFeF5N5rzg;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$AppPairController$ormGp-hh9OtfOhs5ymFeF5N5rzg;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPairActivity(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "profile"

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start pair activity, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPairController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 287
    :try_start_0
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "setEnterAppPair"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v6, v7}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "setEnterAppPairFromShortCut"

    new-array v6, v5, [Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v6, v7}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "setAppPairPrimary"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v1, v3, v4, v7, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "setAvoidMoveToFront"

    new-array v6, v5, [Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v6, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Start pair activity fail: "

    .line 292
    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/miui/launcher/utils/LauncherUtils;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startPrimaryActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 248
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 249
    invoke-direct {p0, v2, v5}, Lcom/miui/home/launcher/AppPairController;->isSupportAppPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/AppPairController;->addForegroundWindowListener(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/miui/home/launcher/AppPairController;->addAppPairStartWindow(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 259
    iget-object p4, p0, Lcom/miui/home/launcher/AppPairController;->mHandler:Landroid/os/Handler;

    const/4 p5, 0x2

    const-wide/16 v0, 0x2bc

    invoke-virtual {p4, p5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    .line 262
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/AppPairController;->realStartPrimaryActivity(Landroid/content/Intent;Landroid/content/ComponentName;Landroid/app/ActivityOptions;Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void

    .line 250
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1103f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public beginAppPairAnimation(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)Z
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 180
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->isShow:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    new-instance v0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;-><init>(FLandroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/AppPairStartView;->animate(Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;)V

    const/4 p0, 0x1

    return p0

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindowWithAnim()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public breakAppPairAnimation()V
    .locals 0

    return-void
.end method

.method public finishAppPairAnimation()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindowWithAnim()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/AppPairStartView;->updateIconRect()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mPairIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AppPairController;->startPairActivity(Landroid/content/Intent;)V

    .line 213
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mPairIntentMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2

    .line 218
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindow()V

    goto :goto_0

    .line 220
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_1

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/AppPairStartView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController;->mRootView:Lcom/miui/home/launcher/view/AppPairStartView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AppPairStartView;->updateIconRect()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startAppPair(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/ActivityOptions;Landroid/view/View;Ljava/lang/String;)Z
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 87
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v0

    const-string v1, "app_pair_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/miui/home/launcher/AppPairController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v7

    const-string v0, "profile"

    .line 89
    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/AppPairController;->mPairIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start app pair, primaryIntent = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " primaryUser = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " pairIntent = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " pairUser = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AppPairController"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v6, p5

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/AppPairController;->startPrimaryActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method
