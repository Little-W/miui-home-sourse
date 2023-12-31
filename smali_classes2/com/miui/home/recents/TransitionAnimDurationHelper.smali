.class public Lcom/miui/home/recents/TransitionAnimDurationHelper;
.super Ljava/lang/Object;
.source "TransitionAnimDurationHelper.java"


# static fields
.field private static sInstance:Lcom/miui/home/recents/TransitionAnimDurationHelper;


# instance fields
.field private mAnimDurationRatio:F

.field private mAnimDurationRatioObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatio:F

    .line 19
    invoke-direct {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->updateAnimDurationRatio()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/TransitionAnimDurationHelper;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->updateAnimDurationRatio()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->sInstance:Lcom/miui/home/recents/TransitionAnimDurationHelper;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/miui/home/recents/TransitionAnimDurationHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->sInstance:Lcom/miui/home/recents/TransitionAnimDurationHelper;

    .line 26
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->sInstance:Lcom/miui/home/recents/TransitionAnimDurationHelper;

    return-object v0
.end method

.method private updateAnimDurationRatio()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "transition_animation_duration_ratio"

    .line 56
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatio:F

    .line 59
    iget v0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatio:F

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatio:F

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDurationRatio:mDurationRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TransitionAnimDurationHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAnimDurationRatio()F
    .locals 1

    .line 64
    iget p0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatio:F

    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public registerAnimDurationRatioObserver(Landroid/content/ContentResolver;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatioObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/miui/home/recents/TransitionAnimDurationHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/TransitionAnimDurationHelper$1;-><init>(Lcom/miui/home/recents/TransitionAnimDurationHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatioObserver:Landroid/database/ContentObserver;

    :cond_0
    const-string v0, "transition_animation_duration_ratio"

    .line 43
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatioObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    iget-object p0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatioObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public unregisterAnimDurationRatioObserver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper;->mAnimDurationRatioObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
