.class public Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;
.source "TopMenuContainerFolmeAnim.java"


# instance fields
.field private mFolme:Lmiuix/animation/IFolme;

.field private mNewAlpha:F

.field private mOldAlpha:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V
    .locals 5

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    const/4 p1, 0x1

    .line 28
    new-array v0, p1, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mFolme:Lmiuix/animation/IFolme;

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    .line 30
    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result v1

    new-array v3, p1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v4, v3, v2

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, p1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v3, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 31
    invoke-interface {v0, v3, v1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v1, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mOldAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mNewAlpha:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getOpaqueColor(I)I

    move-result p0

    return p0
.end method

.method private createAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 4

    .line 70
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    return-object v0
.end method

.method private getFolme()Lmiuix/animation/IFolme;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mFolme:Lmiuix/animation/IFolme;

    return-object v0
.end method

.method private getOpaqueColor(I)I
    .locals 1

    const/16 v0, 0xff

    .line 86
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 6

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->changeColor(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 41
    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mOldAlpha:F

    .line 42
    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mNewAlpha:F

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->createAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    iget p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mNewAlpha:F

    new-array v1, v3, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v4, v1, v2

    .line 47
    invoke-interface {p1, p2, v1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array p2, v3, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, p2, v2

    .line 49
    invoke-interface {p1, p2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p1

    if-ne p2, p1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array p2, v3, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, p2, v2

    .line 53
    invoke-interface {p1, p2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 56
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string p2, "animState"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mNewAlpha:F

    float-to-double v4, v1

    .line 57
    invoke-virtual {p1, p2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p2

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v1, v2

    invoke-interface {p2, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method public changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 2

    .line 64
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mImageViewAnimEndColor:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getOpaqueColor(I)I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTextViewAnimEndColor:I

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getOpaqueColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setAlpha(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
