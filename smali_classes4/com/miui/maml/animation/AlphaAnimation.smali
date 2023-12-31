.class public Lcom/miui/maml/animation/AlphaAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    const-string v0, "Alpha"

    const-string v1, "a"

    .line 18
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    const-string p2, "delayValue"

    .line 20
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 23
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/AlphaAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 2

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/AlphaAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method protected getDefaultValue()D
    .locals 2

    const-wide v0, 0x406fe00000000000L    # 255.0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .locals 0

    .line 41
    iget p0, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    int-to-double p0, p0

    return-wide p0
.end method
