.class Lcom/miui/maml/ActionCommand$LoopCommand;
.super Lcom/miui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lcom/miui/maml/data/Expression;

.field private mConditionExp:Lcom/miui/maml/data/Expression;

.field private mCountExp:Lcom/miui/maml/data/Expression;

.field private mEndExp:Lcom/miui/maml/data/Expression;

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 3300
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "indexName"

    .line 3302
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3303
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$LoopCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    .line 3304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3305
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_0
    const-string p1, "begin"

    .line 3307
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mBeginExp:Lcom/miui/maml/data/Expression;

    const-string p1, "count"

    .line 3308
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    .line 3309
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_1

    const-string p1, "end"

    .line 3310
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mEndExp:Lcom/miui/maml/data/Expression;

    :cond_1
    const-string p1, "loopCondition"

    .line 3312
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mConditionExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 9

    .line 3317
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mBeginExp:Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    .line 3318
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3319
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mEndExp:Lcom/miui/maml/data/Expression;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    :goto_1
    sub-int v3, v2, v0

    int-to-long v4, v3

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const-string v4, "ActionCommand"

    .line 3321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count is too large: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exceeds WARNING "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-gt v0, v2, :cond_7

    .line 3324
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mConditionExp:Lcom/miui/maml/data/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_4

    goto :goto_4

    .line 3327
    :cond_4
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_5

    int-to-double v4, v0

    .line 3328
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 3330
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_6

    .line 3332
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand;->perform()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method
