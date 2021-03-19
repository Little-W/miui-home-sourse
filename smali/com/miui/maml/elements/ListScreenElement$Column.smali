.class public Lcom/miui/maml/elements/ListScreenElement$Column;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public mList:Lcom/miui/maml/elements/ListScreenElement;

.field public mName:Ljava/lang/String;

.field public mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field public mTarget:Ljava/lang/String;

.field public mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 255
    iput-object p3, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mList:Lcom/miui/maml/elements/ListScreenElement;

    if-eqz p1, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "name"

    .line 262
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    const-string v0, "target"

    .line 263
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 264
    new-instance p1, Lcom/miui/maml/elements/ListScreenElement$Column$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/ListScreenElement$Column$1;-><init>(Lcom/miui/maml/elements/ListScreenElement$Column;)V

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 275
    instance-of v1, v0, Lcom/miui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement;

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    goto :goto_0

    :cond_0
    const-string v0, "ListScreenElement"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find VarArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 282
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    return-void
.end method
