.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimUtilFirstVersion"
.end annotation


# instance fields
.field private mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field final synthetic this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 419
    iput-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAlphaUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAlphaUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->startAnim()V

    return-void
.end method

.method private initAlphaAnimator()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 442
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 443
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$3;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 460
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private initChangeYAnimator()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 424
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

    .line 425
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42200000    # 40.0f
    .end array-data
.end method

.method private startAnim()V
    .locals 4

    .line 470
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeChangeYAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAgreeAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 472
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public clearAnim()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initAnimtor()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->initChangeYAnimator()V

    .line 466
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->initAlphaAnimator()V

    return-void
.end method
