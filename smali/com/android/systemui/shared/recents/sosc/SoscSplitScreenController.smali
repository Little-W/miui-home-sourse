.class public Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
.super Ljava/lang/Object;
.source "SoscSplitScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoscSplitStateController"

.field private static sInstance:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnable:Z

.field private mIsFold:Z

.field private mIsPad:Z

.field private mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

.field private mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

.field private mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

.field private mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

.field private mPreloadMinimizedSize:I

.field private final mSoscEnableObserver:Landroid/database/ContentObserver;

.field private mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

.field private final mSoscSplitScreenListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$1;-><init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscEnableObserver:Landroid/database/ContentObserver;

    .line 226
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$2;-><init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSoscEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;)Ljava/util/Set;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    return p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->sInstance:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->sInstance:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->sInstance:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    return-object v0
.end method

.method private isSoscEnable()Z
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "wmshell.sosc_enable"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static synthetic lambda$BV01s44kf38fvPt4XqQnwzP_M_Q(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onGoingToRecentsLegacy$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 486
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onGoingToRecentsLegacy$1(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 488
    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method static synthetic lambda$onStartingSplitLegacy$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 513
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onStartingSplitLegacy$3(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 515
    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private registerSoScSplitScreenListener()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string v0, "Failed call registerSoScSplitScreenListener"

    .line 195
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterSoScSplitScreenListener()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenObserver:Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string v0, "Failed call unregisterSoScSplitScreenListener"

    .line 206
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public exitSplitScreen(I)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 316
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->exitSplitScreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call exitSoscSplitScreen"

    .line 318
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandLeftOrTopPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandLeftOrTopPad_1_2()Landroid/graphics/Rect;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandLeftOrTopPad_2_1()Landroid/graphics/Rect;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomPad_1_2()Landroid/graphics/Rect;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsLandRightOrBottomPad_2_1()Landroid/graphics/Rect;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortLeftOrTopPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadBoundsPortRightOrBottomPad_1_1()Landroid/graphics/Rect;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPreloadMinimizedSize()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadMinimizedSize:I

    return p0
.end method

.method public getSoScSplitInfo()Landroid/os/Bundle;
    .locals 2

    .line 541
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 545
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string v1, "Failed call getSoScSplitInfo"

    .line 547
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getState()I
    .locals 0

    .line 290
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    return p0
.end method

.method public initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Landroid/content/Context;ZZZ)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean p3, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsPad:Z

    .line 73
    iput-boolean p4, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsFold:Z

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->registerSoScSplitScreenListener()V

    .line 75
    invoke-virtual {p0, p5}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->updatePreloadBounds(Z)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSoscEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    .line 77
    iget-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wmshell.sosc_enable"

    .line 78
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscEnableObserver:Landroid/database/ContentObserver;

    const/4 p4, 0x0

    .line 77
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initSoscSplitScreen: mIsEnable = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoscSplitStateController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;

    .line 82
    invoke-interface {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;->onInitSoscSplitScreen()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHalfSplitMode()Z
    .locals 1

    .line 281
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isNormalMode()Z
    .locals 1

    .line 277
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitMode()Z
    .locals 1

    .line 286
    iget p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSosc()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onGestureEnd(I)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 565
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 569
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGestureEnd(I)V

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureEnd = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call onGestureEnd"

    .line 572
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onGestureStart(I)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 553
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 557
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGestureStart(I)V

    .line 558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureStart: touchRange = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call onGestureStart"

    .line 560
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 484
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$pShaOcDjzo0l19pMc9nyPuRhuLg;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$pShaOcDjzo0l19pMc9nyPuRhuLg;

    .line 485
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;

    .line 487
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$pKZDQx67yHKpdSvzCEsu1fF8soo;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$pKZDQx67yHKpdSvzCEsu1fF8soo;

    .line 488
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    .line 489
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 493
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call onGoingToRecentsLegacy"

    .line 496
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onStartingSplitLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 511
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;

    .line 512
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;

    .line 514
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$Cu_0HQ5KemNrLSQYuT_59A4zekM;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$Cu_0HQ5KemNrLSQYuT_59A4zekM;

    .line 515
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    .line 516
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 520
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call onStartingSplitLegacy"

    .line 523
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public removeSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeTaskFromSplit(I)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 301
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->removeTaskFromSplit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call removeTaskFromSplit"

    .line 303
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSplitRatio(F)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 529
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 533
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->setSplitRatio(F)V

    .line 534
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSplitRatio: ratio = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call setSplitRatio"

    .line 536
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public snapSplitToNextRatio(I)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 330
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->snapSplitToNextRatio(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call snapSplitToNextRatio"

    .line 332
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 374
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call startIntent"

    .line 376
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 9

    const-string v0, "SoscSplitStateController"

    move-object v1, p0

    .line 417
    iget-object v1, v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v1, :cond_0

    return-void

    .line 421
    :cond_0
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIntentAndTaskWithLegacyTransition: pendingIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startIntentAndTaskWithLegacyTransition"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 8

    .line 448
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string p0, "SoscSplitStateController"

    if-nez p7, :cond_1

    const/4 p7, 0x0

    goto :goto_0

    .line 452
    :cond_1
    :try_start_0
    invoke-virtual {p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p7

    :goto_0
    move-object v7, p7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startIntentsWithLegacyTransition: pendingIntent1 = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pendingIntent2 = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Failed call startIntentsWithLegacyTransition"

    .line 455
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    .line 356
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 360
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call startShortcut"

    .line 362
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 8

    .line 433
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    :try_start_0
    invoke-virtual {p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoscSplitStateController"

    const-string p1, "Failed call startShortcutAndTaskWithLegacyTransition"

    .line 439
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startSplitWithIntents(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 1

    .line 463
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "SoscSplitStateController"

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    .line 467
    :cond_1
    :try_start_0
    invoke-virtual {p4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object p4

    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startSplitWithIntents: pendingIntent1 = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pendingIntent2 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Failed call startSplitWithIntents"

    .line 470
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "SoscSplitStateController"

    .line 341
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 345
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTask(IILandroid/os/Bundle;)V

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startTask: taskId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call startTask"

    .line 348
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 9

    const-string v0, "SoscSplitStateController"

    move-object v1, p0

    .line 401
    iget-object v1, v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v1, :cond_0

    return-void

    .line 405
    :cond_0
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTasks: taskId1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startTasks"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 9

    const-string v0, "SoscSplitStateController"

    move-object v1, p0

    .line 385
    iget-object v1, v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez v1, :cond_0

    return-void

    .line 389
    :cond_0
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTasksWithLegacyTransition: taskId1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startTasksWithLegacyTransition"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateDividerFixedState(Z)V
    .locals 2

    const-string v0, "SoscSplitStateController"

    .line 578
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-nez p0, :cond_0

    return-void

    .line 582
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen;->updateDividerFixedState(Z)V

    .line 583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDividerFixedState: isFixed = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call updateDividerFixedState"

    .line 585
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updatePreloadBounds(Z)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SoscSplitStateController"

    if-nez p1, :cond_0

    const-string/jumbo p0, "updatePreloadBounds: bundle is null"

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "PreloadMinimizedSize"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadMinimizedSize:I

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreloadMinimizedSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadMinimizedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsPad:Z

    if-eqz v1, :cond_1

    const-string v1, "PadPreloadLandLeftOrTopBounds1_2"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandRightOrBottomBounds1_2"

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandLeftOrTopBounds1_1"

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandRightOrBottomBounds1_1"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandLeftOrTopBounds2_1"

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadLandRightOrBottomBounds2_1"

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadPortLeftOrTopBounds1_1"

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    const-string v1, "PadPreloadPortRightOrBottomBounds1_1"

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreloadBounds: mPreloadBoundsLandLeftOrTopPad_1_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandRightOrBottomPad_1_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandLeftOrTopPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandRightOrBottomPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandLeftOrTopPad_2_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopPad_2_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsLandRightOrBottomPad_2_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomPad_2_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cmPreloadBoundsPortLeftOrTopPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreloadBoundsPortRightOrBottomPad_1_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomPad_1_1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mIsFold:Z

    if-eqz v1, :cond_2

    const-string v1, "FoldPreloadLandLeftOrTopBounds1_1"

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadLandRightOrBottomBounds1_1"

    .line 126
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadPortLeftOrTopBounds1_1"

    .line 127
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    const-string v1, "FoldPreloadPortRightOrBottomBounds1_1"

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreloadBounds: mPreloadBoundsLandLeftOrTopFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandLeftOrTopFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadBoundsLandRightOrBottomFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsLandRightOrBottomFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadBoundsPortLeftOrTopFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortLeftOrTopFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadBoundsPortRightOrBottomFold_1_1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mPreloadBoundsPortRightOrBottomFold_1_1:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
