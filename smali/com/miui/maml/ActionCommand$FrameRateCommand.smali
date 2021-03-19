.class Lcom/miui/maml/ActionCommand$FrameRateCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameRateCommand"
.end annotation


# static fields
.field private static final TAG_NAME:Ljava/lang/String; = "FrameRateCommand"


# instance fields
.field private mRate:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 548
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 549
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "rate"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FrameRateCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->requestFrameRateByCommand(F)V

    :cond_0
    return-void
.end method
