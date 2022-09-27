.class public Lcom/miui/maml/animation/SourcesAnimation;
.super Lcom/miui/maml/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    const-string v0, "Source"

    .line 25
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/miui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1

    .line 33
    new-instance v0, Lcom/miui/maml/animation/SourcesAnimation$Source;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/animation/SourcesAnimation$Source;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method protected onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 2

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 40
    invoke-virtual {p0, p3, v0, v1}, Lcom/miui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 41
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p2, p3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lcom/miui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 46
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 47
    check-cast p2, Lcom/miui/maml/animation/SourcesAnimation$Source;

    iget-object p1, p2, Lcom/miui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    return-void
.end method
