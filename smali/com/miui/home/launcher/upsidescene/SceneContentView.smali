.class public Lcom/miui/home/launcher/upsidescene/SceneContentView;
.super Landroid/widget/FrameLayout;
.source "SceneContentView.java"


# instance fields
.field private mOverWidth:I

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getOverWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setOverWidth(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getOverWidth()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mOverWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a020c

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    return-void
.end method

.method public setOverWidth(I)V
    .locals 1

    .line 48
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mOverWidth:I

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->requestLayout()V

    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-void
.end method

.method public widthTo(I)V
    .locals 3

    const-string v0, "overWidth"

    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 59
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method
