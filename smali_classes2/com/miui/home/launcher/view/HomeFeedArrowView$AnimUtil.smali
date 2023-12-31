.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimUtil"
.end annotation


# instance fields
.field private mAlphaUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mEndAnimator:Landroid/animation/ValueAnimator;

.field private mFirstAnimator:Landroid/animation/ValueAnimator;

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mSecondAnimSet:Landroid/animation/AnimatorSet;

.field private mThirdAnimSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 296
    iput-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAlphaUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->startAnim()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAlphaUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    return-object p0
.end method

.method private initFirstAnimator()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$302(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 302
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initFourthAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 370
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mEndAnimator:Landroid/animation/ValueAnimator;

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mEndAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mEndAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 385
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mEndAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private initSecondAnimator()V
    .locals 3

    .line 323
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mSecondAnimSet:Landroid/animation/AnimatorSet;

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mSecondAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mSecondAnimSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private initThirdAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 330
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 331
    new-instance v2, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$2;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    .line 342
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v2, v0, [F

    .line 345
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 346
    new-instance v3, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    iget-object v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x12c

    .line 362
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mThirdAnimSet:Landroid/animation/AnimatorSet;

    .line 365
    iget-object v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mThirdAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 366
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mThirdAnimSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42080000    # 34.0f
    .end array-data
.end method

.method private startAnim()V
    .locals 4

    .line 396
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mFirstAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mSecondAnimSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mThirdAnimSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mEndAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 398
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public clearAnim()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initAnimtor()V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initFirstAnimator()V

    .line 390
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initSecondAnimator()V

    .line 391
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initThirdAnimator()V

    .line 392
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initFourthAnimator()V

    return-void
.end method
