.class Lcom/miui/maml/ActionCommand$IfCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfCommand"
.end annotation


# static fields
.field private static final ALTERNATE:Ljava/lang/String; = "Alternate"

.field private static final CONSEQUENT:Ljava/lang/String; = "Consequent"

.field public static final TAG_NAME:Ljava/lang/String; = "IfCommand"


# instance fields
.field private mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 2931
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2932
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "ifCondition"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 2933
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 2934
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2935
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2936
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 2937
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Consequent"

    .line 2938
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-nez v3, :cond_0

    .line 2939
    new-instance v2, Lcom/miui/maml/ActionCommand$MultiCommand;

    invoke-direct {v2, p1, v1}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    goto :goto_1

    :cond_0
    const-string v3, "Alternate"

    .line 2940
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-nez v2, :cond_1

    .line 2941
    new-instance v2, Lcom/miui/maml/ActionCommand$MultiCommand;

    invoke-direct {v2, p1, v1}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 4

    .line 2949
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mCondition:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 2950
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1

    .line 2952
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->perform()V

    goto :goto_0

    .line 2954
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1

    .line 2955
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->perform()V

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 2992
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_0

    .line 2993
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->finish()V

    .line 2995
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1

    .line 2996
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->finish()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .line 2962
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_0

    .line 2963
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->init()V

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1

    .line 2966
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->init()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 2972
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_0

    .line 2973
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->pause()V

    .line 2975
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1

    .line 2976
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->pause()V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .line 2982
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_0

    .line 2983
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->resume()V

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1

    .line 2986
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->resume()V

    :cond_1
    return-void
.end method
