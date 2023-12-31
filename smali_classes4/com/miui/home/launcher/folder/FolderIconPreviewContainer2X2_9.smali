.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;
.super Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
.source "FolderIconPreviewContainer2X2_9.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIconPreviewContainer2X2_9.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIconPreviewContainer2X2_9.kt\ncom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9\n*L\n1#1,266:1\n*E\n"
.end annotation


# instance fields
.field private final m2x2LargeItemMergeEdgePercent:F

.field private final m2x2LargeItemMergeInnerPercent:F

.field private final m2x2SmallItemMergeInnerPercent:F

.field private mLarge2x2ItemMergeEdgeHor:I

.field private mLarge2x2ItemMergeEdgeVer:I

.field private mLarge2x2ItemMergeInnerHor:I

.field private mLarge2x2ItemMergeInnerVer:I

.field private mLargeItemHeight:I

.field private mLargeItemWith:I

.field private mSmall2x2ItemMergeInner:I

.field private mSmallItemHeight:I

.field private mSmallItemWith:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3d800000    # 0.0625f

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2LargeItemMergeEdgePercent:F

    const p1, 0x3d343958    # 0.044f

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2LargeItemMergeInnerPercent:F

    const p1, 0x3cb43958    # 0.022f

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2SmallItemMergeInnerPercent:F

    const/16 p1, 0xc

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->setMItemsMaxCount(I)V

    const/16 p1, 0x8

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->setMLargeIconNum(I)V

    return-void
.end method

.method private final largeViewPreSetup2x2(IIIIIII)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMPvItemLocationInfoList()Ljava/util/List;

    move-result-object v13

    .line 125
    new-instance v14, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    .line 130
    new-instance v8, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-direct {v8, v15, v15, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    new-instance v9, Landroid/graphics/Rect;

    add-int v7, v10, v1

    add-int v6, v11, v2

    invoke-direct {v9, v1, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v14

    move v15, v6

    move/from16 v6, p5

    move/from16 v16, v7

    move/from16 v7, p6

    .line 125
    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;-><init>(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getLAYOUT_DEBUGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "largeViewPreSetup2x2 , index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , layout = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget v2, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    add-int/2addr v2, v10

    .line 143
    rem-int/lit8 v3, v12, 0x3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    neg-int v2, v2

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move/from16 v1, p3

    :goto_0
    const/4 v2, 0x1

    add-int/lit8 v3, v12, 0x1

    .line 147
    div-int/lit8 v3, v3, 0x3

    iget v0, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    add-int/2addr v0, v11

    mul-int/2addr v3, v0

    add-int v0, p4, v3

    new-array v3, v4, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v0, v3, v2

    return-object v3
.end method

.method private final smallViewPreSetup2x2(IIIIII)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMPvItemLocationInfoList()Ljava/util/List;

    move-result-object v13

    .line 163
    new-instance v14, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    .line 168
    new-instance v8, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-direct {v8, v15, v15, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    new-instance v9, Landroid/graphics/Rect;

    add-int v7, v10, v1

    add-int v6, v11, v2

    invoke-direct {v9, v1, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v14

    move v15, v6

    move/from16 v6, p4

    move/from16 v16, v7

    move/from16 v7, p5

    .line 163
    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;-><init>(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 162
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getLAYOUT_DEBUGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "smallViewPreSetup2x2 , index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , layout = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v6, v16

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget v3, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    add-int/2addr v3, v10

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMLargeIconNum()I

    move-result v4

    sub-int v4, v12, v4

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    neg-int v3, v3

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    move/from16 v1, p3

    :goto_0
    add-int/lit8 v3, v12, -0x8

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 194
    iget v0, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    add-int/2addr v0, v11

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    new-array v2, v5, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput v0, v2, v4

    return-object v2
.end method


# virtual methods
.method public getSmallItemsRectF()Landroid/graphics/RectF;
    .locals 6

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeVer:I

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 258
    new-instance v2, Landroid/graphics/RectF;

    .line 261
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    int-to-float v5, v4

    add-float/2addr v3, v5

    .line 262
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemHeight:I

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float/2addr p0, v1

    int-to-float v4, v4

    add-float/2addr p0, v4

    .line 258
    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public onMeasureChild2x2()V
    .locals 6

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMItemsMaxCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMLargeIconNum()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 52
    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 53
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 51
    invoke-virtual {v2, v4, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->measure(II)V

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setItemPadding(I)V

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 61
    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 62
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemHeight:I

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 60
    invoke-virtual {v2, v4, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->measure(II)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public preMeasure2x2(II)V
    .locals 4

    .line 201
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    .line 202
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    int-to-float v0, p1

    .line 210
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2LargeItemMergeEdgePercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    .line 211
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2LargeItemMergeInnerPercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    .line 212
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    .line 214
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    .line 215
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    .line 217
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, p2, v2

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeVer:I

    .line 218
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2SmallItemMergeInnerPercent:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    .line 219
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    .line 220
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemHeight:I

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    .line 222
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2LargeItemMergeEdgePercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeVer:I

    .line 223
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2LargeItemMergeInnerPercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    .line 224
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    .line 226
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeVer:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    .line 227
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    .line 229
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    mul-int/lit8 v2, v1, 0x3

    sub-int v2, p1, v2

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    .line 230
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->m2x2SmallItemMergeInnerPercent:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    .line 231
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    .line 232
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemHeight:I

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getLAYOUT_DEBUGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getTAG()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\ncontainer info,\t\t\tpreview size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "validWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\t\t\t\tvalidHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "padding = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingStart()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingTop()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingRight()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingBottom()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "large2x2ItemMergeEdgeHor = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\t\tlarge2x2ItemMergeEdgeVer = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeVer:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "large2x2ItemMergeInnerHor = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",  \tlarge2x2ItemMergeInnerVer = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerVer:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "largeItemWith = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\t\t\t\tlargeItemHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "small2x2ItemMergeInner = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "smallItemWith = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\t\t\t\t\tsmallItemHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public preSetup2x2()V
    .locals 14

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeInnerHor:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeHor:I

    :goto_0
    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLarge2x2ItemMergeEdgeVer:I

    add-int v9, v1, v2

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMItemsMaxCount()I

    move-result v10

    const/4 v11, 0x0

    move v2, v0

    move v3, v9

    move v8, v11

    move v12, v8

    :goto_1
    if-ge v12, v10, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->getMLargeIconNum()I

    move-result v1

    const/4 v13, 0x1

    if-ge v12, v1, :cond_2

    .line 83
    iget v6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemWith:I

    .line 84
    iget v7, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mLargeItemHeight:I

    move-object v1, p0

    move v4, v0

    move v5, v9

    move v8, v12

    .line 78
    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->largeViewPreSetup2x2(IIIIIII)[I

    move-result-object v1

    .line 87
    aget v2, v1, v11

    .line 88
    aget v1, v1, v13

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    if-ne v12, v3, :cond_1

    .line 92
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmall2x2ItemMergeInner:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_1
    move v3, v1

    move v8, v2

    goto :goto_2

    .line 101
    :cond_2
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemWith:I

    .line 102
    iget v6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->mSmallItemHeight:I

    move-object v1, p0

    move v4, v8

    move v7, v12

    .line 97
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_9;->smallViewPreSetup2x2(IIIIII)[I

    move-result-object v1

    .line 105
    aget v2, v1, v11

    .line 106
    aget v1, v1, v13

    move v3, v1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
