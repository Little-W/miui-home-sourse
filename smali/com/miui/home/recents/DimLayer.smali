.class public Lcom/miui/home/recents/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final sInstance:Lcom/miui/home/recents/DimLayer;


# instance fields
.field private mCurrentAlpha:F

.field private mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field private mIsNeedReparent:Z

.field private mIsSupportDim:Z

.field private final mLock:Ljava/lang/Object;

.field private mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/miui/home/recents/DimLayer;

    invoke-direct {v0}, Lcom/miui/home/recents/DimLayer;-><init>()V

    sput-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/DimLayer;
    .locals 1

    .line 29
    sget-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-object v0
.end method

.method private isSupportDim()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reparentToLauncher()V
    .locals 3

    .line 107
    iget-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 117
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 119
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z
    :try_end_0
    .catch Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createDimLayer()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/DimLayer;->createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    :cond_1
    return-void
.end method

.method public createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-nez v1, :cond_2

    const-string v1, "Launcher Dim"

    .line 57
    invoke-static {v1, p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getColorLayer(Ljava/lang/String;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string p1, "DimLayer"

    const-string v1, "createDimLayer"

    .line 58
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    .line 61
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V
    .locals 5

    .line 80
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 86
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    .line 87
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v3, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 88
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 89
    iget p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    goto :goto_1

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 93
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->reparentToLauncher()V

    .line 95
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 96
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const-string p1, "DimLayer"

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dim mCurrentAlpha="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "   isDimSelf="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "DimLayer"

    const-string p3, "dim error"

    .line 101
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    return v0
.end method

.method public removeDimLayer()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 69
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string v1, "DimLayer"

    const-string v2, "removeDimLayer"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DimLayer"

    const-string v3, "removeDimLayer error"

    .line 74
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
