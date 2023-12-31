.class public Lcom/miui/maml/animation/ScaleAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 3

    const-string v0, "value"

    const-string v1, "x"

    const-string v2, "y"

    .line 14
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item"

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    return-void
.end method

.method private getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 1

    if-nez p1, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 46
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method private getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 1

    if-nez p1, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 50
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p0

    :goto_1
    return-wide p0
.end method


# virtual methods
.method protected getDelayValue(I)D
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-wide p0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide p0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    :goto_1
    return-wide p0
.end method

.method public final getScaleX()D
    .locals 2

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getScaleY()D
    .locals 2

    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v3

    sub-double/2addr v3, v0

    float-to-double v5, p3

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    const/4 p1, 0x2

    .line 42
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide p2

    sub-double/2addr p2, v0

    mul-double/2addr p2, v5

    add-double/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    return-void
.end method
