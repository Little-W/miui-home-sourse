.class Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;
.super Ljava/lang/Object;
.source "BackdropBlurViewBinder.java"


# instance fields
.field private mAttachedToWindow:Z

.field private final mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

.field private mBlurEnabled:Z

.field private final mCheckSurface:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mUserVisible:Z

.field private final mView:Landroid/view/View;

.field private mVisibilityAggregated:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 24
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;

    invoke-direct {v0, p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;-><init>(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mCheckSurface:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 34
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)Landroid/view/View;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method private evaluateUserVisibility()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const-string v5, "getSurfaceControl"

    invoke-static {v3, v5, v4}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v0, v3, v4}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    instance-of v4, v3, Landroid/view/SurfaceControl;

    if-eqz v4, :cond_0

    .line 73
    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mVisibilityAggregated:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mCheckSurface:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mUserVisible:Z

    if-eq v0, v1, :cond_6

    if-eqz v1, :cond_5

    .line 89
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {v0, v2}, Lcom/miui/blur/sdk/backdrop/BlurManager;->register(Landroid/content/Context;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_4

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager;->unregister(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    .line 94
    :cond_6
    :goto_4
    iput-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mUserVisible:Z

    return-void
.end method


# virtual methods
.method public isBackdropBlurSupported()Z
    .locals 0

    .line 98
    sget-boolean p0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    return p0
.end method

.method public isBlurEnabledAndSupported()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    .line 51
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    .line 56
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBlurEnabledAndSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {p1, p0}, Lcom/miui/blur/sdk/backdrop/BlurManager;->draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_0
    return-void
.end method

.method onVisibilityAggregated(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mVisibilityAggregated:Z

    .line 46
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method setBlurEnabled(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 61
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method
