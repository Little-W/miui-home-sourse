.class public final Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;
.super Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;
.source "LauncherCellCountCompatNoWordFold.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;->getLoadResCellConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getCellCountXDef(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public getCellCountXMax(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;->getLoadResCellConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getCellCountXMax(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public getCellCountXMin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;->getLoadResCellConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getCellCountXMin(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public getCellCountYDef(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;->getLoadResCellConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getCellCountYDef(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    return p1
.end method

.method public getCellCountYMax(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;->getLoadResCellConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getCellCountYMax(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    return p1
.end method

.method public getCellCountYMin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWordFold;->getLoadResCellConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getCellCountYMin(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    return p1
.end method
