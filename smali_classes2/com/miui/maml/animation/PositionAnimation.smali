.class public Lcom/miui/maml/animation/PositionAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "PositionAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Position"

.field public static final TAG_NAME:Ljava/lang/String; = "PositionAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    const-string v0, "Position"

    .line 13
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    const-string v0, "x"

    const-string v1, "y"

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getX()D
    .locals 2

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/PositionAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/PositionAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
