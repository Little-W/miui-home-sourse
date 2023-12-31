.class Lcom/miui/maml/ActionCommand$EaseTypeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EaseTypeCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EaseTypeCommand"


# instance fields
.field private mEaseFun:Ljava/lang/String;

.field private mEaseParams:Ljava/lang/String;

.field private mEaseTypeExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 2647
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2648
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 2649
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "easeTypeExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lcom/miui/maml/data/Expression;

    const-string p1, "easeFunExp"

    .line 2650
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    const-string p1, "easeParamsExp"

    .line 2651
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 5

    .line 2656
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2660
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 2661
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
