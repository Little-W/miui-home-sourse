.class public Lcom/miui/maml/animation/RotationAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "RotationAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    const-string v0, "Rotation"

    const-string v1, "angle"

    .line 14
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getAngle()F
    .locals 2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/RotationAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
