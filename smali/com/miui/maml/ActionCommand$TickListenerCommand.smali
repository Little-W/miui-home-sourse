.class Lcom/miui/maml/ActionCommand$TickListenerCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TickListenerCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "TickListenerCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

.field private mFunNameExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1833
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1834
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TickListenerCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "function"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lcom/miui/maml/data/Expression;

    const-string p1, "command"

    .line 1835
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1836
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x1bc62

    if-eq p2, v0, :cond_1

    const v0, 0x6a47b29

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "unset"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "set"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1841
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    goto :goto_2

    .line 1838
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 1850
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TickListenerCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1851
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1854
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 1856
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1865
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->unsetOnTickListener()V

    goto :goto_0

    .line 1858
    :pswitch_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 1859
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TickListenerCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1860
    instance-of v2, v1, Lcom/miui/maml/elements/FunctionElement;

    if-eqz v2, :cond_1

    .line 1861
    check-cast v1, Lcom/miui/maml/elements/FunctionElement;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
