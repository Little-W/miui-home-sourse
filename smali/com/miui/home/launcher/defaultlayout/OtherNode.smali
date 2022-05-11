.class public final Lcom/miui/home/launcher/defaultlayout/OtherNode;
.super Lcom/miui/home/launcher/defaultlayout/Node;
.source "OtherNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/OtherNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 17
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMCurrentToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmcc"

    .line 24
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_7

    :cond_0
    const-string v1, "no_cmcc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v1, :cond_7

    :cond_1
    const-string v1, "meitu"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v1, :cond_7

    :cond_2
    const-string v1, "no_meitu"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-nez v1, :cond_7

    :cond_3
    const-string v1, "installed"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x9

    if-eqz v1, :cond_5

    .line 23
    sget-object v1, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/OtherNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    const-string v1, "no_installed"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    sget-object v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/OtherNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->skipCurrentToken()V

    .line 29
    :cond_8
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/OtherNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
