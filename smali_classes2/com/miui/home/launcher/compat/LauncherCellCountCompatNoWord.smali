.class public final Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;
.super Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;
.source "LauncherCellCountCompatNoWord.kt"


# instance fields
.field private mShouldLoadResCellConfig:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXDef(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public getCellCountXMax(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMax(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public getCellCountXMin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMin(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public getCellCountYDef(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYDef(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method public getCellCountYMax(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMax(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method public getCellCountYMin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMin(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public final getLoadResCellConfig()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    return p0
.end method

.method public final setLoadResCellConfig(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->mShouldLoadResCellConfig:Z

    return-void
.end method
