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

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    const/4 p1, 0x1

    .line 34
    new-array v0, p1, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mFolme:Lmiuix/animation/IFolme;

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    .line 36
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

    .line 37
    invoke-interface {v0, v3, v1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v1, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mOldAlpha:F

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mOldAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mNewAlpha:F

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mNewAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->createAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getFolme()Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getOpaqueColor(I)I

    move-result p0

    return p0
.end method

.method private createAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 4

    .line 84
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$2;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    return-object v0
.end method

.method private getFolme()Lmiuix/animation/IFolme;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mFolme:Lmiuix/animation/IFolme;

    return-object v0
.end method

.method private getOpaqueColor(I)I
    .locals 1

    const/16 v0, 0xff

    .line 100
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 2

    .line 78
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mImageViewAnimEndColor:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getOpaqueColor(I)I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTextViewAnimEndColor:I

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->getOpaqueColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setAlpha(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 109
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$3;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
