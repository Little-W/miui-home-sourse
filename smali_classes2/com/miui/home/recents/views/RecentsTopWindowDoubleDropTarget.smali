.class public Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;
.super Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.source "RecentsTopWindowDoubleDropTarget.java"


# instance fields
.field private mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

.field private mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

.field private mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

.field protected mIsSupportMiniSmallWindow:Z

.field protected mIsSupportWorldcirculate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsSupportMiniSmallWindow:Z

    .line 22
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsSupportWorldcirculate:Z

    return-void
.end method

.method public static createDoubleDropTarget(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;)Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;",
            ")",
            "Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d011e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    .line 155
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setCurTaskRadius(Ljava/util/function/Supplier;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setCurTaskFullscreenProgress(Ljava/util/function/Supplier;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p3}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setFinish(Ljava/util/function/BiConsumer;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    move-result-object p1

    .line 158
    invoke-virtual {p1, p4}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setUpdateWindowPosition(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    return-object p0
.end method


# virtual methods
.method public getAppToWorldCirculateRectF()Landroid/graphics/RectF;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getAppToWorldCirculateRectF()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public initDropTarget(ZZ)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->initDropTarget(ZZ)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->initDropTarget(ZZ)V

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsSupportMiniSmallWindow:Z

    .line 136
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->setAlpha(F)V

    const/4 p2, 0x0

    .line 138
    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    .line 139
    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsLandscape:Z

    if-nez p2, :cond_1

    .line 140
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mHoverBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mScreenHeight:I

    int-to-float v1, v1

    const v2, 0x3e828f5c    # 0.255f

    mul-float/2addr v1, v2

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mHoverBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mScreenHeight:I

    int-to-float v1, v1

    const v2, 0x3eb9db23    # 0.363f

    mul-float/2addr v1, v2

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    return-void
.end method

.method protected innerStateChanged(FF)Z
    .locals 3

    .line 72
    iget p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 73
    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsSupportWorldcirculate:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    if-ne v1, v2, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mIsSupportMiniSmallWindow:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 75
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    if-nez v0, :cond_6

    :cond_4
    if-eqz p1, :cond_5

    .line 77
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    goto :goto_2

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    :cond_6
    :goto_2
    return p2
.end method

.method public isToHoverState(FFF)Z
    .locals 3

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isToHoverState(FFF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->innerStateChanged(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iput v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mLastCropStatus:I

    :cond_1
    return p3
.end method

.method public onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;->onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f0a01e3

    .line 43
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    const v0, 0x7f0a01e2

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    .line 45
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setRecentsTopWindowCrop(Lcom/miui/home/recents/views/RecentsTopWindowCrop;)V

    .line 46
    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onFinishInflate()V

    return-void
.end method

.method public onHover(FF)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;->onHover(FF)V

    .line 93
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 94
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->onShow(Z)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->onShow(Z)V

    :goto_0
    return-void
.end method

.method public onNear(FF)V
    .locals 0

    return-void
.end method

.method public onShow(Z)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->TAG:Ljava/lang/String;

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->setViewAlpha(Landroid/view/View;F)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->onShow(Z)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->onShow(Z)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mActiveDropTarget:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;

    return-void
.end method

.method public resetDropTarget()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->resetDropTarget()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->resetDropTarget()V

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public updateDropTargetConfiguration()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->updateDropTargetConfiguration()V

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->updateDropTargetConfiguration()V

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mWidth:I

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mHeight:I

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07049c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 113
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->setPadding(IIII)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07049f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07049e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetWorldCirculate:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 121
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->mDropTargetSmallWindow:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
