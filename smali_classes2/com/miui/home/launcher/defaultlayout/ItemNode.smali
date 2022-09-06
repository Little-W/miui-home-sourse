.class public Lcom/miui/home/launcher/defaultlayout/ItemNode;
.super Lcom/miui/home/launcher/defaultlayout/Node;
.source "ItemNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemNode.kt\ncom/miui/home/launcher/defaultlayout/ItemNode\n*L\n1#1,61:1\n*E\n"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Node;-><init>()V

    return-void
.end method

.method private final fillCommonContentValues(Landroid/content/res/TypedArray;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    const-string v0, "profileId"

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getContainer(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "container"

    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->isInDesktopContainer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "screen"

    const/16 v2, 0x10

    .line 33
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "cellX"

    .line 35
    invoke-direct {p0, p1, v0, p3}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getCellX(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "cellY"

    const/16 v0, 0x18

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getCellX(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x17

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

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
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->isInDesktopContainer(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "favorite"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "shortcut"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "folder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    sub-int/2addr p2, p1

    sub-int/2addr p2, v1

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private final getContainer(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 41
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

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private final isInDesktopContainer(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, -0x64

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getMValues()Landroid/content/ContentValues;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/defaultlayout/ItemNode;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/defaultlayout/ItemNode;->mValues:Landroid/content/ContentValues;

    .line 24
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/defaultlayout/ItemNode;->mValues:Landroid/content/ContentValues;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMCurrentToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->fillCommonContentValues(Landroid/content/res/TypedArray;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method
