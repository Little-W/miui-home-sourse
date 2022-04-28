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
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWindowToken:Landroid/os/IBinder;

    .line 36
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 37
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

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getUSE_PHY_ANIM$p()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, p2, [F

    fill-array-data v3, :array_0

    invoke-virtual {p1, v0, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/16 v3, 0xc

    new-array v4, v2, [F

    const/high16 v5, 0x44960000    # 1200.0f

    aput v5, v4, v1

    invoke-virtual {p1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 38
    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getUSE_PHY_ANIM$p()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x6

    new-array v0, v2, [F

    const/high16 v2, 0x43660000    # 230.0f

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 40
    :goto_1
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    .line 45
    new-instance p1, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomListener:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    .line 53
    new-instance p1, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static final synthetic access$animateZoomOutTo(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;FZ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateZoomOutTo(FZ)V

    return-void
.end method

.method public static final synthetic access$getMFolmeTarget$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFolmeTarget:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMZoomInAnimConfig$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public static final synthetic access$getMZoomListener$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomListener:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    return-object p0
.end method

.method public static final synthetic access$getMZoomOutAnimConfig$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public static final synthetic access$getMZoomedIn$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomedIn:Z

    return p0
.end method

.method public static final synthetic access$setMZoomedIn$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomedIn:Z

    return-void
.end method

.method public static final synthetic access$setWallpaperZoomOut(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->setWallpaperZoomOut(F)V

    return-void
.end method

.method private final animateZoomOutTo(FZ)V
    .locals 4

    .line 78
    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
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
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    .line 88
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getUPDATE_ZOOM_METHOD$p()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWindowToken:Landroid/os/IBinder;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final abortAnimations()V
    .locals 1

    .line 72
    new-instance v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final animateWallpaperZoom(Z)V
    .locals 1

    .line 63
    new-instance v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
