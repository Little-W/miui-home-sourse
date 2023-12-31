.class public final Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;
.super Ljava/lang/Object;
.source "BigIconConvertSizeController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBigIconConvertSizeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigIconConvertSizeController.kt\ncom/miui/home/launcher/bigicon/BigIconConvertSizeController\n*L\n1#1,223:1\n*E\n"
.end annotation


# instance fields
.field private final form1x1To2x2:[[I

.field private final form1x2To2x1:[[I

.field private final form2x1To1x2:[[I

.field private mAllNewPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllNoPositionInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllScreenInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCellXIterateRange:[I

.field private mCurrentScreenOccupied:[[Ljava/lang/Object;

.field private mHCells:I

.field private mIconType:I

.field private final mMark:Ljava/lang/Object;

.field private mVCells:I

.field private final noScreenId:J

.field private final oneDirection:[[I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BigIconConvertSizeController"

    .line 14
    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->tag:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 15
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    check-cast v1, [[I

    iput-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->form1x1To2x2:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 16
    fill-array-data v3, :array_3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    check-cast v1, [[I

    iput-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->form2x1To1x2:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 17
    fill-array-data v3, :array_6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    check-cast v1, [[I

    iput-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->form1x2To2x1:[[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    .line 18
    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v2

    check-cast v0, [[I

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->noScreenId:J

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mMark:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNewPosition:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    new-array v0, v2, [I

    .line 179
    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCellXIterateRange:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

.method public static final synthetic access$findMultiPositionOnCurrentScreen(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;Ljava/util/List;JII)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findMultiPositionOnCurrentScreen(Ljava/util/List;JII)V

    return-void
.end method

.method public static final synthetic access$isPosValidate(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;IIII)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isPosValidate(IIII)Z

    move-result p0

    return p0
.end method

.method private final calCellXRange(I)V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCellXIterateRange:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mHCells:I

    sub-int/2addr v3, v2

    :goto_0
    aput v3, v0, v1

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCellXIterateRange:[I

    if-ne p1, v2, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mHCells:I

    add-int/lit8 v1, p0, -0x1

    :cond_1
    aput v1, v0, v2

    return-void
.end method

.method private final findAPositionFromThreeDirections(IIIIII)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    if-ne p4, v1, :cond_0

    if-ne p5, v0, :cond_0

    if-ne p6, v0, :cond_0

    .line 147
    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->form1x1To2x2:[[I

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->getPositionFromThreeDirections([[IIIII)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p3, v0, :cond_1

    if-ne p4, v1, :cond_1

    if-ne p5, v1, :cond_1

    if-ne p6, v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->form2x1To1x2:[[I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->getPositionFromThreeDirections([[IIIII)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p3, v1, :cond_2

    if-ne p4, v0, :cond_2

    if-ne p5, v0, :cond_2

    if-ne p6, v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->form1x2To2x1:[[I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->getPositionFromThreeDirections([[IIIII)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final findAPositionOnCurrentScreen(II)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 166
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->calCellXRange(I)V

    .line 167
    iget v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mVCells:I

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 168
    iget-object v4, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCellXIterateRange:[I

    aget v4, v4, v0

    :goto_1
    const/4 v5, 0x1

    .line 169
    iget-object v6, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCellXIterateRange:[I

    if-ne v1, v5, :cond_0

    aget v6, v6, v5

    if-gt v4, v6, :cond_1

    goto :goto_2

    :cond_0
    aget v6, v6, v5

    if-lt v4, v6, :cond_1

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-eqz v5, :cond_3

    .line 170
    invoke-direct {p0, v4, v3, p1, p2}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isPosValidate(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    add-int/2addr v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private final findAPositionOnCurrentScreen(Lcom/miui/home/launcher/ShortcutInfo;II)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 119
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 120
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v1, v3

    .line 121
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isPosValidate(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 124
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    aget-object v1, v1, v4

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 125
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    aget-object v3, v3, v4

    aget v3, v3, v4

    add-int/2addr v1, v3

    .line 126
    iget v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    if-ge v3, p2, :cond_1

    iget v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    if-ne v3, p3, :cond_1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isPosValidate(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 129
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    const/4 v3, 0x2

    aget-object v1, v1, v3

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 130
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->oneDirection:[[I

    aget-object v2, v2, v3

    aget v2, v2, v4

    add-int/2addr v1, v2

    .line 131
    iget v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    if-ne v2, p2, :cond_2

    iget v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    if-ge v2, p3, :cond_2

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isPosValidate(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 134
    check-cast v0, Landroid/util/Pair;

    .line 135
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    if-eq v1, p2, :cond_3

    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    if-eq v1, p3, :cond_3

    .line 137
    iget v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    iget v5, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 138
    iget v6, p1, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    move-object v2, p0

    move v7, p2

    move v8, p3

    .line 136
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findAPositionFromThreeDirections(IIIIII)Landroid/util/Pair;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    .line 140
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findAPositionOnCurrentScreen(II)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final findMultiPositionOnCurrentScreen(Ljava/util/List;JII)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;JII)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isSuccessfulToInitOccupied(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 97
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v5, 0x1

    .line 99
    iget v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v7, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    iget v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    iget v9, v3, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->updateCurrentOccupied(ZIIII)V

    .line 100
    invoke-direct {p0, v3, p4, p5}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findAPositionOnCurrentScreen(Lcom/miui/home/launcher/ShortcutInfo;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, p0

    move v4, p4

    move v5, p5

    move-wide v6, p2

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->updateNewPosition(Landroid/util/Pair;Lcom/miui/home/launcher/ShortcutInfo;IIJ)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " no position info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final findMultiPositionOnNewScreen(Landroid/util/Pair;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v7, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mAllNoPositionInfo.removeAt(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 87
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v1, "newSpanXY.first"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "newSpanXY.second"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-wide v5, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->noScreenId:J

    move-object v0, p0

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->updateNewPosition(Landroid/util/Pair;Lcom/miui/home/launcher/ShortcutInfo;IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final findMultiPositionsOnCurrentScreen(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllScreenInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v1, "mAllScreenInfoMap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;-><init>(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;Landroid/util/Pair;)V

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private final findMultiPositionsOnLastScreen(Landroid/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    goto :goto_0

    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->noScreenId:J

    .line 61
    :goto_0
    iget-wide v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->noScreenId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->isSuccessfulToInitOccupied(J)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 64
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    :goto_1
    move-object v2, v9

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 68
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v5, "newSpanXY.first"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v7, "newSpanXY.second"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findAPositionOnCurrentScreen(II)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "info"

    .line 70
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v2, p0

    move-wide v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->updateNewPosition(Landroid/util/Pair;Lcom/miui/home/launcher/ShortcutInfo;IIJ)V

    goto :goto_1

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " no position size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNoPositionInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private final getPositionFromThreeDirections([[IIIII)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[IIIII)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 159
    new-instance v6, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;-><init>(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;IIII)V

    check-cast v6, Ljava/util/function/Predicate;

    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;

    invoke-direct {p1, p2, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;-><init>(II)V

    check-cast p1, Ljava/util/function/Function;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method private final getSpanXY(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "x"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 47
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final init(Ljava/util/List;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mHCells:I

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mVCells:I

    .line 41
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 42
    sget-object p3, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;

    check-cast p3, Ljava/util/function/Function;

    invoke-static {p3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "allInfos.stream()\n      \u2026 shortcutInfo.screenId })"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllScreenInfoMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 43
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mIconType:I

    return-void
.end method

.method private final isPosValidate(IIII)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_7

    add-int v2, p1, v1

    .line 207
    iget v3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mHCells:I

    if-ge v2, v3, :cond_6

    if-gez v2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_5

    add-int v4, p2, v3

    .line 211
    iget v5, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mVCells:I

    if-ge v4, v5, :cond_4

    if-gez v4, :cond_1

    goto :goto_2

    .line 216
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCurrentScreenOccupied:[[Ljava/lang/Object;

    if-nez v5, :cond_2

    const-string v6, "mCurrentScreenOccupied"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    aget-object v5, v5, v2

    aget-object v4, v5, v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method private final isSuccessfulToInitOccupied(J)Z
    .locals 1

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getOccupiedCell()[[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCurrentScreenOccupied:[[Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final updateCurrentOccupied(ZIIII)V
    .locals 3

    add-int/2addr p4, p2

    add-int/lit8 p4, p4, -0x1

    if-lt p4, p2, :cond_4

    :goto_0
    add-int v0, p3, p5

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p3, :cond_3

    :goto_1
    const-string v1, "mCurrentScreenOccupied"

    if-eqz p1, :cond_1

    .line 197
    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCurrentScreenOccupied:[[Ljava/lang/Object;

    if-nez v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    aget-object v1, v2, p4

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_2

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mCurrentScreenOccupied:[[Ljava/lang/Object;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    aget-object v1, v2, p4

    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mMark:Ljava/lang/Object;

    aput-object v2, v1, v0

    :goto_2
    if-eq v0, p3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-eq p4, p2, :cond_4

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final updateNewPosition(Landroid/util/Pair;Lcom/miui/home/launcher/ShortcutInfo;IIJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "IIJ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 187
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v9, "newPosi.first"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v10, "newPosi.second"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->updateCurrentOccupied(ZIIII)V

    .line 188
    iget-object v0, v6, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNewPosition:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;

    .line 189
    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 190
    iget v2, v8, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    iget v3, v6, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mIconType:I

    move-object v11, v1

    move/from16 v14, p3

    move/from16 v15, p4

    move-wide/from16 v16, p5

    move/from16 v18, v2

    move/from16 v19, v3

    .line 188
    invoke-direct/range {v11 .. v19}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;-><init>(IIIIJII)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public convertAppIconSize(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "infos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p4, p3}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->init(Ljava/util/List;ZLjava/lang/String;)V

    if-nez p2, :cond_0

    .line 31
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->getSpanXY(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findMultiPositionsOnCurrentScreen(Landroid/util/Pair;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findMultiPositionsOnLastScreen(Landroid/util/Pair;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findMultiPositionOnNewScreen(Landroid/util/Pair;)V

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "Application.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    const-string p2, "Application.getInstance().model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->mAllNewPosition:Ljava/util/HashMap;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppIconResize(Ljava/util/HashMap;)V

    return-void
.end method
