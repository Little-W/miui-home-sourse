.class public Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;
.super Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.source "RecentsTopWindowDropTargetWorldCirculate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;
    }
.end annotation


# instance fields
.field private final ITEM_BG_INITIAL_COLOR:I

.field private final WORLD_BG_IS_CHOSEN_COLOR:I

.field private mAppToWorldCirculateRectF:Landroid/graphics/RectF;

.field private mCurTaskFullscreenProgress:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTaskRadius:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mFinish:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsSupportWorldcirculate:Z

.field private mUpdateWindowPosition:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;

.field private mWorldCirculateContentTransY:I

.field private mWorldcirculateContent:Landroid/view/ViewGroup;

.field private mWorldcirculateHoldText:Landroid/widget/TextView;

.field private mWorldcirculateIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "#26B2B2B2"

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->ITEM_BG_INITIAL_COLOR:I

    const-string p1, "#808288C0"

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->WORLD_BG_IS_CHOSEN_COLOR:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mIsSupportWorldcirculate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Ljava/util/function/Supplier;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mCurTaskFullscreenProgress:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mUpdateWindowPosition:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mFinish:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method private initViewDisplayInDrag(Z)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mIsSupportWorldcirculate:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewAlpha(Landroid/view/View;F)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->ITEM_BG_INITIAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewBgColor(Landroid/view/View;I)V

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateIcon:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewTranslation(Landroid/view/View;FZ)V

    .line 181
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewAlpha(Landroid/view/View;F)V

    return-void
.end method

.method private setViewBgColor(Landroid/view/View;I)V
    .locals 0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 186
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setViewTranslation(Landroid/view/View;FZ)V
    .locals 7

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 191
    iget p3, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldCirculateContentTransY:I

    int-to-float v5, p3

    iget-object v6, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewTranslationWithAnim(Landroid/view/View;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 193
    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewTranslationNoAnim(Landroid/view/View;FF)V

    :goto_0
    return-void
.end method

.method private startAppToWorldCirculate(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getAppToWorldCirculateRectF()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mCurTaskRadius:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 101
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 102
    new-instance p1, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$1;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)V

    invoke-virtual {v7, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 110
    new-instance p1, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v7, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    invoke-virtual {v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    :cond_0
    return-void
.end method

.method private updateAppToWorldCirculateRectF()V
    .locals 6

    const/4 v0, 0x2

    .line 170
    new-array v0, v0, [I

    .line 171
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 172
    aget v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x1

    .line 173
    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 174
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42480000    # 50.0f

    sub-float v4, v1, v3

    sub-float v5, v0, v3

    add-float/2addr v1, v3

    add-float/2addr v0, v3

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public getAppToWorldCirculateRectF()Landroid/graphics/RectF;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public initDropTarget(ZZ)V
    .locals 0

    .line 165
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mIsSupportWorldcirculate:Z

    .line 166
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->startAppToWorldCirculate(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a01e6

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateIcon:Landroid/view/View;

    const v0, 0x7f0a01e5

    .line 65
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a02fa

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateContent:Landroid/view/ViewGroup;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    .line 68
    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onFinishInflate()V

    return-void
.end method

.method public onHover(FF)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->TAG:Ljava/lang/String;

    const-string p2, "onHover"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->initViewDisplayInDrag(Z)V

    .line 87
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewAlpha(Landroid/view/View;F)V

    .line 88
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateIcon:Landroid/view/View;

    iget p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldCirculateContentTransY:I

    int-to-float p2, p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewTranslation(Landroid/view/View;FZ)V

    .line 89
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->WORLD_BG_IS_CHOSEN_COLOR:I

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->setViewBgColor(Landroid/view/View;I)V

    return-void
.end method

.method public onNear(FF)V
    .locals 0

    return-void
.end method

.method public onShow(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->TAG:Ljava/lang/String;

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->initViewDisplayInDrag(Z)V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->updateAppToWorldCirculateRectF()V

    return-void
.end method

.method public resetDropTarget()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public setCurTaskFullscreenProgress(Ljava/util/function/Supplier;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mCurTaskFullscreenProgress:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setCurTaskRadius(Ljava/util/function/Supplier;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mCurTaskRadius:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setFinish(Ljava/util/function/BiConsumer;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mFinish:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public setUpdateWindowPosition(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mUpdateWindowPosition:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;

    return-object p0
.end method

.method public updateDropTargetConfiguration()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWorldCirculateContentTransY:I

    return-void
.end method

.method public updateTopWindowConfiguration()V
    .locals 2

    .line 145
    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->updateTopWindowConfiguration()V

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mWidth:I

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->mHeight:I

    return-void
.end method
