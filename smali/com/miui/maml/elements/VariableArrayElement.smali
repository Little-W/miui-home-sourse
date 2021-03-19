.class public Lcom/miui/maml/elements/VariableArrayElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/VariableArrayElement$Item;,
        Lcom/miui/maml/elements/VariableArrayElement$Var;,
        Lcom/miui/maml/elements/VariableArrayElement$VarObserver;,
        Lcom/miui/maml/elements/VariableArrayElement$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field mData:[Ljava/lang/Object;

.field private mItemCount:I

.field private mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

.field mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

.field mVarObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/maml/elements/VariableArrayElement$VarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 43
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 51
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    const-string p2, "type"

    .line 168
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "string"

    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 170
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    goto :goto_0

    .line 172
    :cond_0
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/VariableArrayElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "Vars"

    .line 176
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Var"

    new-instance v2, Lcom/miui/maml/elements/VariableArrayElement$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$1;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    const-string v0, "Items"

    .line 183
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "Item"

    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$2;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$2;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 189
    iget-boolean p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mHasName:Z

    if-eqz p1, :cond_1

    .line 190
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected doTick(J)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->tick()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItemSize()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    return v0
.end method

.method public init()V
    .locals 4

    .line 210
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 211
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    iget-object v3, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v3}, Lcom/miui/maml/elements/VariableArrayElement$Var;->init()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 216
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_1

    .line 217
    iget v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 220
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 221
    :goto_1
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    if-ge v1, v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/VariableArrayElement$Item;

    iget-object v2, v2, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 232
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/miui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
