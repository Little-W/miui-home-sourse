.class Lcom/miui/maml/ActionCommand$FunctionPerformCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionPerformCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FunctionCommand"


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 2318
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2319
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FunctionPerformCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .line 2324
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FunctionPerformCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2325
    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    if-eqz v1, :cond_0

    .line 2326
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    :cond_0
    return-void
.end method
