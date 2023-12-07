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

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 254
    iput-object p3, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mList:Lcom/miui/maml/elements/ListScreenElement;

    if-eqz p1, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "name"

    .line 261
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    const-string v0, "target"

    .line 262
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 263
    new-instance p1, Lcom/miui/maml/elements/ListScreenElement$Column$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/ListScreenElement$Column$1;-><init>(Lcom/miui/maml/elements/ListScreenElement$Column;)V

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    if-eqz v0, :cond_0

    .line 286
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 274
    instance-of v1, v0, Lcom/miui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_0

    .line 275
    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement;

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find VarArray:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ListScreenElement"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    return-void
.end method
