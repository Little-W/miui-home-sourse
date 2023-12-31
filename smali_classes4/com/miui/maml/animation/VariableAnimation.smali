.class public Lcom/miui/maml/animation/VariableAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "VariableAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/animation/VariableAnimation$Color;
    }
.end annotation


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "AniFrame"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableAnimation"


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mCurValuesStr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    const-string v0, "AniFrame"

    .line 25
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/animation/VariableAnimation;->mType:Ljava/lang/String;

    const-string p2, "color"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/miui/maml/animation/VariableAnimation;->mAttrs:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/maml/animation/VariableAnimation;->mCurValuesStr:[Ljava/lang/String;

    .line 29
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/animation/VariableAnimation;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getValue()D
    .locals 2

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/VariableAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getValueStr()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/miui/maml/animation/VariableAnimation;->mCurValuesStr:[Ljava/lang/String;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/miui/maml/animation/VariableAnimation;->mType:Ljava/lang/String;

    const-string v0, "color"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 44
    new-instance p0, Lcom/miui/maml/animation/VariableAnimation$Color;

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/VariableAnimation$Color;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object p0
.end method

.method protected onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/miui/maml/animation/VariableAnimation;->mType:Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/VariableAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 57
    move-object v2, p1

    check-cast v2, Lcom/miui/maml/animation/VariableAnimation$Color;

    iget-object v2, v2, Lcom/miui/maml/animation/VariableAnimation$Color;->color:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 58
    move-object v3, p2

    check-cast v3, Lcom/miui/maml/animation/VariableAnimation$Color;

    iget-object v3, v3, Lcom/miui/maml/animation/VariableAnimation$Color;->color:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 59
    iget-object v4, p0, Lcom/miui/maml/animation/VariableAnimation;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p3, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 60
    invoke-static {v2}, Lcom/miui/maml/util/ColorUtils;->ColorToHex(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/miui/maml/animation/VariableAnimation;->mCurValuesStr:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    :cond_3
    return-void
.end method
