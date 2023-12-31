.class public abstract Lcom/miui/home/launcher/convertsize/ItemIconConvertSizeController;
.super Ljava/lang/Object;
.source "ItemIconConvertSizeController.kt"

# interfaces
.implements Lcom/miui/home/launcher/convertsize/ConvertSizeController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemIconConvertSizeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemIconConvertSizeController.kt\ncom/miui/home/launcher/convertsize/ItemIconConvertSizeController\n*L\n1#1,24:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertFolderSize(Lcom/miui/home/launcher/FolderInfo;I)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/convertsize/ConvertSizeController$DefaultImpls;->convertFolderSize(Lcom/miui/home/launcher/convertsize/ConvertSizeController;Lcom/miui/home/launcher/FolderInfo;I)V

    return-void
.end method

.method public final findAPositionOnLastScreen(Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)Lcom/miui/home/launcher/convertsize/ItemPositionInfo;
    .locals 11

    const-string p0, "positionInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanX()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanY()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18
    new-instance v0, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v5, v1, v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanX()I

    move-result v6

    .line 19
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanY()I

    move-result v7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getItemType()I

    move-result v10

    move-object v3, v0

    .line 18
    invoke-direct/range {v3 .. v10}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;-><init>(IIIIJI)V

    return-object v0

    .line 14
    :cond_1
    move-object p0, v0

    check-cast p0, Ljava/lang/Void;

    :cond_2
    return-object v0
.end method

.method public final isIconBigger(IIII)Z
    .locals 0

    if-gt p3, p1, :cond_1

    if-le p4, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
