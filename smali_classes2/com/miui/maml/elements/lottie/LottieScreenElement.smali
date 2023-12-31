.class public Lcom/miui/maml/elements/lottie/LottieScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "LottieScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LottieScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Lottie"


# instance fields
.field private mAutoPlay:Z

.field private mDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mDurationProperty:Lcom/miui/maml/data/IndexedVariable;

.field private mLoop:I

.field private mLottiePath:Ljava/lang/String;

.field private mProgressProperty:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const-string p2, "src"

    .line 32
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mLottiePath:Ljava/lang/String;

    const-string p2, "loop"

    const/4 v0, -0x1

    .line 33
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mLoop:I

    const-string p2, "autoplay"

    .line 34
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mAutoPlay:Z

    .line 36
    invoke-direct {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->load()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/lottie/LottieScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mProgressProperty:Lcom/miui/maml/data/IndexedVariable;

    return-object p0
.end method

.method private load()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mProgressProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 66
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDurationProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mLottiePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceManager;->getResourceLoader()Lcom/miui/maml/ResourceLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceManager;->getResourceLoader()Lcom/miui/maml/ResourceLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mLottiePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v2, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mLottiePath:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 76
    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$hRh86VMHL0DmcbssVVyUyVNqD_I;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$hRh86VMHL0DmcbssVVyUyVNqD_I;-><init>(Lcom/miui/maml/elements/lottie/LottieScreenElement;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v1, Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$qUaWs5DqvujMBQA9wy4hS144Z08;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$qUaWs5DqvujMBQA9wy4hS144Z08;-><init>(Lcom/miui/maml/elements/lottie/LottieScreenElement;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v1, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;-><init>(Lcom/miui/maml/elements/lottie/LottieScreenElement;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getX()F

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getY()F

    move-result v1

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getWidth()F

    move-result v2

    .line 46
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0, v4, v2}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getLeft(FF)F

    move-result v5

    .line 48
    invoke-virtual {p0, v4, v3}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->getTop(FF)F

    move-result v6

    cmpg-float v7, v5, v4

    if-gtz v7, :cond_0

    add-float/2addr v0, v5

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    cmpg-float v7, v6, v4

    if-gtz v7, :cond_1

    add-float/2addr v1, v6

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    cmpl-float v7, v2, v4

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    add-float/2addr v2, v0

    cmpl-float v7, v3, v4

    if-lez v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    add-float/2addr v3, v1

    .line 56
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    iget-object v4, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setBounds(IIII)V

    .line 59
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public goToAndPlay(I)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 165
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->playAnimation()V

    :cond_0
    return-void
.end method

.method public goToAndStop(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 174
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$load$0$LottieScreenElement(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 81
    iget p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mLoop:I

    if-gez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDurationProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 90
    :cond_1
    iget-boolean p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mAutoPlay:Z

    if-eqz p1, :cond_2

    .line 91
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$load$1$LottieScreenElement(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mProgressProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    const-string p1, "update"

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    :cond_0
    return-void
.end method

.method public playSegments(II)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 183
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDurationProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_0

    .line 184
    iget-object p2, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result p2

    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result p0

    sub-float/2addr p2, p0

    float-to-int p0, p2

    int-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    :cond_0
    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement;->mDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->stop()V

    :cond_0
    return-void
.end method
