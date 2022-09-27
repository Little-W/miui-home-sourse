.class public Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;
.source "TopMenuContainerGoogleAnim.java"


# instance fields
.field private mTopMenuColorAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->initAnimator()V

    return-void
.end method

.method private initAnimator()V
    .locals 3

    .line 19
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->changeColor(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    iget p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mImageViewAnimEndColor:I

    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTextViewAnimEndColor:I

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
