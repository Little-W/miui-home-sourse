.class public final Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;
.super Lcom/miui/home/launcher/convertsize/ItemIconConvertSizeController;
.source "FolderIconConvertSizeController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIconConvertSizeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIconConvertSizeController.kt\ncom/miui/home/launcher/convertsize/FolderIconConvertSizeController\n*L\n1#1,80:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;

    invoke-direct {v0}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->INSTANCE:Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/home/launcher/convertsize/ItemIconConvertSizeController;-><init>()V

    return-void
.end method

.method private final findCellLayoutPosition(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;II)[I
    .locals 9

    .line 56
    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v0, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->isCellOccupiedExceptItem(IIIILcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p0, :cond_0

    new-array p0, v1, [I

    .line 57
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput p1, p0, v0

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput p1, p0, v2

    return-object p0

    .line 58
    :cond_0
    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v4, p0, -0x1

    iget v5, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v3, p1

    move v6, p3

    move v7, p4

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->isCellOccupiedExceptItem(IIIILcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    new-array p0, v1, [I

    .line 59
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p1, v2

    aput p1, p0, v0

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput p1, p0, v2

    return-object p0

    .line 60
    :cond_1
    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v4, p0, -0x1

    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/lit8 v5, p0, -0x1

    move-object v3, p1

    move v6, p3

    move v7, p4

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->isCellOccupiedExceptItem(IIIILcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-nez p0, :cond_2

    new-array p0, v1, [I

    .line 61
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p1, v2

    aput p1, p0, v0

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p1, v2

    aput p1, p0, v2

    return-object p0

    .line 62
    :cond_2
    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/lit8 v5, p0, -0x1

    move-object v3, p1

    move v6, p3

    move v7, p4

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->isCellOccupiedExceptItem(IIIILcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-nez p0, :cond_3

    new-array p0, v1, [I

    .line 63
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput p1, p0, v0

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p1, v2

    aput p1, p0, v2

    return-object p0

    .line 65
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p0

    return-object p0
.end method

.method private final insertFolderInNewScreen(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V
    .locals 3

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    new-instance v2, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$insertFolderInNewScreen$$inlined$let$lambda$1;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Lcom/miui/home/launcher/FolderInfo;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->insertNewScreen(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public convertFolderSize(Lcom/miui/home/launcher/FolderInfo;I)V
    .locals 11

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->getFolderSpanXFromType(I)I

    move-result v0

    .line 9
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->getFolderSpanYFromType(I)I

    move-result v9

    .line 10
    new-instance v10, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iget v2, p1, Lcom/miui/home/launcher/FolderInfo;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/FolderInfo;->cellY:I

    .line 11
    iget-wide v6, p1, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    move-object v1, v10

    move v4, v0

    move v5, v9

    move v8, p2

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;-><init>(IIIIJI)V

    .line 12
    iget p2, p1, Lcom/miui/home/launcher/FolderInfo;->spanX:I

    iget v1, p1, Lcom/miui/home/launcher/FolderInfo;->spanY:I

    invoke-virtual {p0, p2, v1, v0, v9}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->isIconBigger(IIII)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 15
    sget-object p2, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->INSTANCE:Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p2, p0, v1, v0, v9}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->findCellLayoutPosition(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;II)[I

    move-result-object p0

    if-nez p0, :cond_2

    .line 17
    sget-object p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->INSTANCE:Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;

    invoke-virtual {p0, v10}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->findAPositionOnLastScreen(Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v10, p0

    goto :goto_1

    .line 21
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->INSTANCE:Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;

    invoke-direct {p0, p1, v10}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->insertFolderInNewScreen(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 25
    aget p2, p0, p2

    invoke-virtual {v10, p2}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->setCellX(I)V

    const/4 p2, 0x1

    .line 26
    aget p0, p0, p2

    invoke-virtual {v10, p0}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->setCellY(I)V

    .line 30
    :cond_3
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string p2, "Application.getInstance()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, v10}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindFolderResize(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V

    :cond_4
    return-void
.end method

.method public final getFolderSpanXFromType(I)I
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getFolderSpanYFromType(I)I
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method
