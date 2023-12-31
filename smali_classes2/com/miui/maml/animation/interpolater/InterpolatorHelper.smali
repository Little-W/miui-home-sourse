.class public Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
.super Ljava/lang/Object;
.source "InterpolatorHelper.java"


# static fields
.field private static final VAR_RATIO:Ljava/lang/String; = "__ratio"


# instance fields
.field private mEaseFunExp:Lcom/miui/maml/data/Expression;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRatioVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1, p4}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/miui/maml/animation/interpolater/InterpolatorFactory;->create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 33
    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 34
    iget-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    if-eqz p2, :cond_0

    .line 35
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    const/4 p3, 0x1

    const-string p4, "__ratio"

    invoke-direct {p2, p4, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_0
    return-void
.end method

.method public static create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
    .locals 3

    const-string v0, "easeType"

    .line 21
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "easeExp"

    .line 22
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "easeParamsExp"

    .line 23
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    new-instance v2, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public get(F)F
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 42
    iget-object p0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p0, :cond_1

    .line 44
    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
