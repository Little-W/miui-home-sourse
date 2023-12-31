.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;
.super Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
.source "FolderIconPreviewContainer2X2_4.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIconPreviewContainer2X2_4.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIconPreviewContainer2X2_4.kt\ncom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4\n*L\n1#1,257:1\n*E\n"
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

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3db43958    # 0.088f

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2LargeItemMergeEdgePercent:F

    const p1, 0x3d99999a    # 0.075f

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2LargeItemMergeInnerPercent:F

    const p1, 0x3ccccccd    # 0.025f

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2SmallItemMergeInnerPercent:F

    const/4 p1, 0x7

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->setMItemsMaxCount(I)V

    const/4 p1, 0x3

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->setMLargeIconNum(I)V

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

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMPvItemLocationInfoList()Ljava/util/List;

    move-result-object v13

    .line 102
    new-instance v14, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    .line 107
    new-instance v8, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-direct {v8, v15, v15, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
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

    .line 102
    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;-><init>(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 101
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getLAYOUT_DEBUGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "largeViewPreSetup2x2 , index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
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

    .line 112
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget v3, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    add-int/2addr v3, v10

    .line 120
    rem-int/lit8 v4, v12, 0x2

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
    const/4 v3, 0x1

    if-ne v12, v3, :cond_3

    .line 123
    iget v0, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    add-int/2addr v0, v11

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v1, v2, v4

    aput v0, v2, v3

    return-object v2
.end method

.method private final smallViewPreSetup2x2(IIIIII)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMPvItemLocationInfoList()Ljava/util/List;

    move-result-object v13

    .line 139
    new-instance v14, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    .line 144
    new-instance v8, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-direct {v8, v15, v15, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
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

    .line 139
    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;-><init>(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 138
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getLAYOUT_DEBUGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "smallViewPreSetup2x2 , index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
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

    .line 149
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget v3, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    add-int/2addr v3, v10

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMLargeIconNum()I

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
    add-int/lit8 v3, v12, -0x3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 170
    iget v0, v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

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

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    add-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 248
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 249
    new-instance v2, Landroid/graphics/RectF;

    .line 252
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    int-to-float v5, v4

    add-float/2addr v3, v5

    .line 253
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemHeight:I

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float/2addr p0, v1

    int-to-float v4, v4

    add-float/2addr p0, v4

    .line 249
    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public onMeasureChild2x2()V
    .locals 6

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMItemsMaxCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMLargeIconNum()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 224
    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 225
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 223
    invoke-virtual {v2, v4, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->measure(II)V

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setItemPadding(I)V

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 233
    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 234
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemHeight:I

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 232
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

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    .line 178
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    int-to-float v0, p1

    .line 181
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2LargeItemMergeEdgePercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    .line 182
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2LargeItemMergeInnerPercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    .line 183
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    .line 185
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    .line 186
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    .line 188
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    .line 189
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2SmallItemMergeInnerPercent:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    .line 190
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    .line 191
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemHeight:I

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    .line 193
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2LargeItemMergeEdgePercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    .line 194
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2LargeItemMergeInnerPercent:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    .line 195
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    .line 197
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    .line 198
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    .line 200
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    .line 201
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->m2x2SmallItemMergeInnerPercent:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    .line 202
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    .line 203
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemHeight:I

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getLAYOUT_DEBUGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getTAG()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n\nvalidWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , validHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "padding = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingStart()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingBottom()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "large2x2ItemMergeEdgeVer = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,     large2x2ItemMergeEdgeHor = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "large2x2ItemMergeInnerHor = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,   large2x2ItemMergeInnerVer = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerVer:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "largeItemWith = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,                  largeItemHeight = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "small2x2ItemMergeInner = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "smallItemWith = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,      smallItemHeight = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public preSetup2x2()V
    .locals 13

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingEnd()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeInnerHor:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeHor:I

    :goto_0
    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    add-int/2addr v1, v2

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMItemsMaxCount()I

    move-result v9

    const/4 v10, 0x0

    move v3, v0

    move v4, v1

    move v1, v10

    move v11, v1

    :goto_1
    if-ge v11, v9, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getMLargeIconNum()I

    move-result v2

    const/4 v12, 0x1

    if-ge v11, v2, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLarge2x2ItemMergeEdgeVer:I

    add-int v5, v1, v2

    .line 60
    iget v6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemWith:I

    .line 61
    iget v7, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mLargeItemHeight:I

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v8, v11

    .line 55
    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->largeViewPreSetup2x2(IIIIIII)[I

    move-result-object v1

    .line 64
    aget v2, v1, v10

    .line 65
    aget v1, v1, v12

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v11, v3, :cond_1

    .line 69
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmall2x2ItemMergeInner:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_1
    move v4, v1

    move v1, v2

    move v3, v1

    goto :goto_2

    .line 78
    :cond_2
    iget v6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemWith:I

    .line 79
    iget v7, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->mSmallItemHeight:I

    move-object v2, p0

    move v5, v1

    move v8, v11

    .line 74
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer2X2_4;->smallViewPreSetup2x2(IIIIII)[I

    move-result-object v2

    .line 82
    aget v3, v2, v10

    .line 83
    aget v2, v2, v12

    move v4, v2

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
