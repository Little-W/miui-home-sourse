.class public Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;
.super Landroid/widget/FrameLayout;
.source "RecentsTopWindowDropTargetSmallWindow.java"

# interfaces
.implements Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;


# instance fields
.field private final ITEM_BG_INITIAL_COLOR:I

.field private final SMALL_BG_IS_CHOSEN_COLOR:I

.field protected final TAG:Ljava/lang/String;

.field protected mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field protected mIsSupportMiniSmallWindow:Z

.field private mRecentsTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

.field private mSmallwindowContent:Landroid/view/ViewGroup;

.field private mSmallwindowContentTransY:I

.field private mSmallwindowHoldText:Landroid/widget/TextView;

.field private mSmallwindowIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RecentsTopWindowCrop_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string p1, "#26B2B2B2"

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->ITEM_BG_INITIAL_COLOR:I

    const-string p1, "#80B2B2B2"

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->SMALL_BG_IS_CHOSEN_COLOR:I

    .line 25
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mIsSupportMiniSmallWindow:Z

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mRecentsTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    return-void
.end method

.method private initViewDisplayInDrag(Z)V
    .locals 2

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mIsSupportMiniSmallWindow:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->ITEM_BG_INITIAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewBgColor(Landroid/view/View;I)V

    .line 137
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowIcon:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewTranslation(Landroid/view/View;FZ)V

    .line 138
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    return-void
.end method

.method private setViewBgColor(Landroid/view/View;I)V
    .locals 0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 151
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setViewTranslation(Landroid/view/View;FZ)V
    .locals 7

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 143
    iget p3, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContentTransY:I

    int-to-float v5, p3

    iget-object v6, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewTranslationWithAnim(Landroid/view/View;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 145
    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewTranslationNoAnim(Landroid/view/View;FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initDropTarget(ZZ)V
    .locals 1

    .line 107
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string v0, "initSmallWindowCrop"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mIsSupportMiniSmallWindow:Z

    .line 109
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 86
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mRecentsTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->startSmallWindow(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a031f

    .line 58
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a0295

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a031e

    .line 60
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    return-void
.end method

.method public onHover(FF)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string p2, "onHover"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->initViewDisplayInDrag(Z)V

    .line 77
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mIsSupportMiniSmallWindow:Z

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;F)V

    .line 79
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowIcon:Landroid/view/View;

    iget p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContentTransY:I

    int-to-float p2, p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewTranslation(Landroid/view/View;FZ)V

    .line 80
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->SMALL_BG_IS_CHOSEN_COLOR:I

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewBgColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onNear(FF)V
    .locals 0

    return-void
.end method

.method public onShow(Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->initViewDisplayInDrag(Z)V

    return-void
.end method

.method public resetDropTarget()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->TAG:Ljava/lang/String;

    const-string v1, "resetDropTarget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public setRecentsTopWindowCrop(Lcom/miui/home/recents/views/RecentsTopWindowCrop;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mRecentsTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;F)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->setViewAlpha(Landroid/view/View;FJ)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FJ)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public updateDropTargetConfiguration()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080698

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1103e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07068f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetSmallWindow;->mSmallwindowContentTransY:I

    return-void
.end method
