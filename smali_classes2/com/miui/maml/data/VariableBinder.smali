.class public abstract Lcom/miui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/VariableBinder$Variable;,
        Lcom/miui/maml/data/VariableBinder$TypedValue;
    }
.end annotation


# instance fields
.field private mDependency:Ljava/lang/String;

.field protected mFinished:Z

.field protected mName:Ljava/lang/String;

.field protected mPaused:Z

.field protected mQueryAtStart:Z

.field private mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field protected mTrigger:Lcom/miui/maml/CommandTrigger;

.field protected mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/VariableBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 81
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    const-string p2, "name"

    .line 83
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    const-string p2, "dependency"

    .line 84
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    const-string p2, "queryAtStart"

    .line 85
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "false"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 86
    iget-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    :cond_0
    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/maml/data/VariableBinderVisitor;)V
    .locals 0

    .line 91
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableBinderVisitor;->visit(Lcom/miui/maml/data/VariableBinder;)V

    return-void
.end method

.method protected addVariable(Lcom/miui/maml/data/VariableBinder$Variable;)V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    :cond_0
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    return-void
.end method

.method protected getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    return-object p0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 31
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 33
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->startQuery()V

    :cond_1
    return-void
.end method

.method protected loadVariables(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 275
    new-instance v0, Lcom/miui/maml/data/VariableBinder$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/VariableBinder$1;-><init>(Lcom/miui/maml/data/VariableBinder;)V

    const-string p0, "Variable"

    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final onUpdateComplete()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    return-void
.end method

.method public setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    return-void
.end method

.method public startQuery()V
    .locals 0

    return-void
.end method

.method public tick()V
    .locals 0

    return-void
.end method
