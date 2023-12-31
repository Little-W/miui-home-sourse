.class public Lcom/miui/maml/animation/SizeAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 5

    const-string v0, "w"

    const-string v1, "h"

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Size"

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 23
    iget-object p1, p0, Lcom/miui/maml/animation/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 25
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    :cond_1
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 27
    invoke-virtual {p2, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxHeight()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/miui/maml/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
