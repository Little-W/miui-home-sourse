.class public Lcom/miui/maml/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"


# instance fields
.field private mLoggedHardwareRender:Z

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/maml/MiAdvancedView;->setClickable(Z)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/maml/MiAdvancedView;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/maml/MiAdvancedView;->setFocusableInTouchMode(Z)V

    .line 48
    iput-object p2, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    .line 50
    new-instance p2, Lcom/miui/maml/MiAdvancedView$1;

    invoke-direct {p2, p0}, Lcom/miui/maml/MiAdvancedView$1;-><init>(Lcom/miui/maml/MiAdvancedView;)V

    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RenderThread;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private removeAccessHelperRef()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 229
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lcom/miui/maml/MiAdvancedView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/maml/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 98
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/miui/maml/MiAdvancedView;->removeAccessHelperRef()V

    .line 102
    :cond_0
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/MamlAccessHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doRender()V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->postInvalidate()V

    return-void
.end method

.method public final getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 79
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 80
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 81
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 85
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 223
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v0, :cond_0

    const-string v0, "MiAdvancedView"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canvas hardware render: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 166
    :cond_0
    iget v0, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 168
    iget v1, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    iget v2, p0, Lcom/miui/maml/MiAdvancedView;->mPivotX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/MiAdvancedView;->mPivotY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    const-string v1, "accessibilityText"

    .line 70
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 183
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v0, "view_width"

    sub-int/2addr p4, p2

    int-to-float p4, p4

    .line 184
    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v1

    div-float/2addr p4, v1

    float-to-double v1, p4

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p4, "view_height"

    sub-int/2addr p5, p3

    int-to-float p5, p5

    .line 185
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float/2addr p5, v0

    float-to-double v0, p5

    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    .line 190
    :goto_0
    instance-of p5, p4, Landroid/view/View;

    if-eqz p5, :cond_0

    .line 191
    check-cast p4, Landroid/view/View;

    .line 192
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p2, p5

    .line 193
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p3, p5

    .line 194
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "view_x"

    int-to-float p2, p2

    .line 197
    iget-object p5, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p5

    div-float/2addr p2, p5

    float-to-double v0, p2

    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p2, "view_y"

    int-to-float p3, p3

    .line 198
    iget-object p4, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p4

    div-float/2addr p3, p4

    float-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 200
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    .line 178
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    .line 205
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 141
    iget-boolean v1, p0, Lcom/miui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 143
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 148
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScale(FII)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    .line 217
    iput p2, p0, Lcom/miui/maml/MiAdvancedView;->mPivotX:I

    .line 218
    iput p3, p0, Lcom/miui/maml/MiAdvancedView;->mPivotY:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onResume()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method
