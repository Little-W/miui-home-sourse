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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 21
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;

    invoke-direct {v0, p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;-><init>(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mCheckSurface:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 31
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)Landroid/view/View;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method private evaluateUserVisibility()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mVisibilityAggregated:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mCheckSurface:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    :cond_3
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mUserVisible:Z

    if-eq v0, v2, :cond_5

    if-eqz v2, :cond_4

    .line 74
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurManager;->register(Landroid/content/Context;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_3

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager;->unregister(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    .line 79
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mUserVisible:Z

    return-void
.end method


# virtual methods
.method public isBackdropBlurSupported()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    return v0
.end method

.method public isBlurEnabledAndSupported()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    .line 48
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mAttachedToWindow:Z

    .line 53
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBlurEnabledAndSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurDrawInfo:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {p1, v0}, Lcom/miui/blur/sdk/backdrop/BlurManager;->draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_0
    return-void
.end method

.method onVisibilityAggregated(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mVisibilityAggregated:Z

    .line 43
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method

.method setBlurEnabled(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mBlurEnabled:Z

    .line 58
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    return-void
.end method
