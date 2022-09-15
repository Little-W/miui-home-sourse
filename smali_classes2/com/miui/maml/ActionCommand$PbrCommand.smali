.class Lcom/miui/maml/ActionCommand$PbrCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PbrCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "PbrCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field private mCustElementName:Ljava/lang/String;

.field private mIsParamsValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mUniformAutoRefresh:Z

.field private mUniformName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1610
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "params"

    .line 1611
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1612
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$PbrCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 1613
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$PbrCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mIsParamsValid:Z

    .line 1614
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mIsParamsValid:Z

    if-nez v0, :cond_0

    const-string v0, "PbrCommand"

    .line 1615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "uniformName"

    .line 1617
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    const-string p1, "custElementName"

    .line 1618
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    const-string p1, "uniformRefresh"

    .line 1619
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    .line 1620
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$PbrCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "command"

    .line 1641
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1642
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6a448b55

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "updateUniform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 1644
    :cond_2
    sget-object p1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    :goto_2
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    .line 1625
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$PbrCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1626
    instance-of v1, v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1629
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 1630
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1632
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
