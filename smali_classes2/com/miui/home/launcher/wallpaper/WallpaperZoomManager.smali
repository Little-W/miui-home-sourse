.class public final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private mCurrentVelocity:F

.field private final mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final mOnAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private final mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWindowToken:Landroid/os/IBinder;

.field private final mZoomInSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mZoomOut:F

.field private final mZoomOutSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mZoomedIn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWindowToken:Landroid/os/IBinder;

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->context:Landroid/content/Context;

    const-class p2, Landroid/app/WallpaperManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    .line 41
    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 42
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 43
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x4202851f    # 32.63f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const v0, 0x3f7d70a4    # 0.99f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 44
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x431de8f6    # 157.91f

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 46
    new-instance p2, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationUpdateListener$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationUpdateListener$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast p2, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 51
    new-instance p2, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationEndListener$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationEndListener$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast p2, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mOnAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->setWallpaperZoomOut(F)V

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mOnAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const p2, 0x3c23d70a    # 0.01f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public static final synthetic access$getMSpringAnimation$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static final synthetic access$getMWallpaperManager$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroid/app/WallpaperManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method public static final synthetic access$getMWindowToken$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroid/os/IBinder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static final synthetic access$getMZoomOut$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    return p0
.end method

.method public static final synthetic access$setMCurrentVelocity$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mCurrentVelocity:F

    return-void
.end method

.method public static final synthetic access$setWallpaperZoomOut(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->setWallpaperZoomOut(F)V

    return-void
.end method

.method private final animateZoomOutTo(FZ)V
    .locals 2

    .line 72
    iget v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mCurrentVelocity:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v0, "mZoomInSpringForce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 78
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomInSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v0, "mZoomOutSpringForce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 81
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOutSpringForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 83
    :goto_0
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final setWallpaperZoomOut(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomOut:F

    .line 88
    new-instance p1, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final abortAnimations()V
    .locals 2

    .line 68
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final animateWallpaperZoom(Z)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getZOOM_ENABLED$p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomedIn:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateZoomOutTo(FZ)V

    .line 64
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->mZoomedIn:Z

    return-void
.end method
