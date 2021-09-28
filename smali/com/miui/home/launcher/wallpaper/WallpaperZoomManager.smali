.class public final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"


# instance fields
.field private final mFolmeTarget:Ljava/lang/String;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWindowToken:Landroid/os/IBinder;

.field private final mZoomInAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private final mZoomListener:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

.field private mZoomOut:F

.field private final mZoomOutAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mZoomedIn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWindowToken:Landroid/os/IBinder;

    .line 34
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wallpaper_zoom_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFolmeTarget:Ljava/lang/String;

    .line 36
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 37
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-virtual {p1, v1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    .line 42
    new-instance p2, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomListener:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->setWallpaperZoomOut(F)V

    const/4 p2, 0x1

    .line 51
    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFolmeTarget:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v0, p2, [Lmiuix/animation/listener/TransitionListener;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomListener:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    check-cast v1, Lmiuix/animation/listener/TransitionListener;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array p2, p2, [Lmiuix/animation/listener/TransitionListener;

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomListener:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    check-cast v0, Lmiuix/animation/listener/TransitionListener;

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public static final synthetic access$getMWallpaperManager$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroid/app/WallpaperManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method public static final synthetic access$getMWindowToken$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroid/os/IBinder;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static final synthetic access$getMZoomOut$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    return p0
.end method

.method public static final synthetic access$setWallpaperZoomOut(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->setWallpaperZoomOut(F)V

    return-void
.end method

.method private final animateZoomOutTo(FZ)V
    .locals 4

    .line 70
    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 73
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFolmeTarget:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInAnimConfig:Lmiuix/animation/base/AnimConfig;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutAnimConfig:Lmiuix/animation/base/AnimConfig;

    :goto_0
    aput-object p2, v0, v3

    invoke-interface {v1, p1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private final setWallpaperZoomOut(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    .line 79
    new-instance p1, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final abortAnimations()V
    .locals 3

    const/4 v0, 0x1

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFolmeTarget:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    return-void
.end method

.method public final animateWallpaperZoom(Z)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getZOOM_ENABLED$p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomedIn:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateZoomOutTo(FZ)V

    .line 62
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomedIn:Z

    return-void
.end method
