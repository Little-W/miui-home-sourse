.class public Lcom/miui/maml/animation/VariableAnimation$Color;
.super Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
.source "VariableAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/animation/VariableAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Color"
.end annotation


# instance fields
.field public color:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    const-string p1, "color"

    .line 38
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/animation/VariableAnimation$Color;->color:Ljava/lang/String;

    return-void
.end method
