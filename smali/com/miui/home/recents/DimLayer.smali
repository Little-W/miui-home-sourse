.class public Lcom/miui/home/recents/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static REPARENT_DELAY_COUNT:I = 0x4

.field private static final sInstance:Lcom/miui/home/recents/DimLayer;


# instance fields
.field private mCurrentAlpha:F

.field private mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field private mIsNeedReparent:Z

.field private mIsSupportDim:Z

.field private final mLock:Ljava/lang/Object;

.field private mReparentDelayCount:I

.field private mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/home/recents/DimLayer;

    invoke-direct {v0}, Lcom/miui/home/recents/DimLayer;-><init>()V

    sput-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/miui/home/recents/DimLayer;->mReparentDelayCount:I

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/DimLayer;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-object v0
.end method

.method private isSupportDim()Z
    .locals 1

    .line 34
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


# virtual methods
.method public createDimLayer()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/DimLayer;->createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    :cond_1
    return-void
.end method

.method public createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-nez v1, :cond_2

    const-string v1, "Launcher Dim"

    .line 58
    invoke-static {v1, p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getColorLayer(Ljava/lang/String;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string p1, "DimLayer"

    const-string v1, "createDimLayer"

    .line 59
    :cond_2
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/miui/home/recents/DimLayer;->mReparentDelayCount:I

    .line 63
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
    .locals 6

    .line 82
    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    iget-boolean v1, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget v3, p0, Lcom/miui/home/recents/DimLayer;->mReparentDelayCount:I

    sget v4, Lcom/miui/home/recents/DimLayer;->REPARENT_DELAY_COUNT:I

    if-ge v3, v4, :cond_1

    .line 92
    iget v1, p0, Lcom/miui/home/recents/DimLayer;->mReparentDelayCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/DimLayer;->mReparentDelayCount:I

    goto :goto_0

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v4, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    :cond_2
    :goto_0
    const/high16 v1, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    .line 101
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v4, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 102
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p1, v1, p2, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 103
    iget p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    .line 104
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    goto :goto_2

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 108
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 109
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const-string p1, "DimLayer"

    .line 110
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

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "DimLayer"

    const-string p3, "dim error"

    .line 114
    .line 116
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    return v0
.end method

.method public removeDimLayer()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 71
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string v1, "DimLayer"

    const-string v2, "removeDimLayer"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DimLayer"

    const-string v3, "removeDimLayer error"

    .line 76
    .line 78
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
