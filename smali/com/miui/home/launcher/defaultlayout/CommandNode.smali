.class public final Lcom/miui/home/launcher/defaultlayout/CommandNode;
.super Lcom/miui/home/launcher/defaultlayout/Node;
.source "CommandNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/CommandNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 14
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/CommandNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/CommandNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/CommandNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_2
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/LayoutCommandParser;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->skipCurrentToken()V

    .line 20
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/CommandNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
