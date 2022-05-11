.class public abstract Lcom/miui/home/launcher/defaultlayout/Node;
.super Ljava/lang/Object;
.source "Node.kt"


# instance fields
.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMTypedArray()Landroid/content/res/TypedArray;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/Node;->mTypedArray:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method public abstract parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
.end method

.method public parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/Node;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->getNode(Ljava/lang/String;)Lcom/miui/home/launcher/defaultlayout/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/defaultlayout/Node;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    :cond_1
    return-void
.end method

.method public final setMTypedArray(Landroid/content/res/TypedArray;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/miui/home/launcher/defaultlayout/Node;->mTypedArray:Landroid/content/res/TypedArray;

    return-void
.end method
