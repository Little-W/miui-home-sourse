.class public final Lcom/miui/home/launcher/defaultlayout/ScreenNode;
.super Lcom/miui/home/launcher/defaultlayout/Node;
.source "ScreenNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenNode.kt\ncom/miui/home/launcher/defaultlayout/ScreenNode\n*L\n1#1,37:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Node;-><init>()V

    return-void
.end method

.method private final getContainer(Landroid/content/res/TypedArray;)J
    .locals 2

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/16 p1, -0x64

    int-to-long v0, p1

    return-wide v0

    .line 34
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/ScreenNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ScreenNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    const-string v2, "PreferenceUtils.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ScreenNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/defaultlayout/ScreenNode;->getContainer(Landroid/content/res/TypedArray;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ScreenNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
