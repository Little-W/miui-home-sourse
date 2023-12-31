.class public final Lcom/miui/home/launcher/folder/FolderIcon1x1;
.super Lcom/miui/home/launcher/FolderIcon;
.source "FolderIcon1x1.kt"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDragOverAnimator:Landroid/animation/ValueAnimator;

.field private mFolderCover:Landroid/widget/ImageView;

.field private mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

.field private mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

.field private final sTmpCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 37
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 38
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    .line 308
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "Application.getLauncherApplication()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getSLayerPaint$p$s1165083175()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_DRAG_OVER_ANIM_SCALE$p$s1165083175()F
    .locals 1

    .line 32
    sget v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    return v0
.end method

.method public static final synthetic access$getDRAG_OVER_ANIM_SCALE_SMALLER$p$s1165083175()F
    .locals 1

    .line 32
    sget v0, Lcom/miui/home/launcher/FolderIcon;->DRAG_OVER_ANIM_SCALE_SMALLER:F

    return v0
.end method

.method public static final synthetic access$getFolderIcon(Lcom/miui/home/launcher/folder/FolderIcon1x1;Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFolderIconLight(Lcom/miui/home/launcher/folder/FolderIcon1x1;Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderIconLight(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAlphaAnimator$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getMFolderCover$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Landroid/widget/ImageView;
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "mFolderCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMIconCache$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method public static final synthetic access$getMIconImageView$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-object p0
.end method

.method public static final synthetic access$getMIsDragingEnter$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIsDragingEnter:Z

    return p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMPreviewContainer$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSLayerPaint$p$s1165083175()Landroid/graphics/Paint;
    .locals 1

    .line 32
    sget-object v0, Lcom/miui/home/launcher/FolderIcon;->sLayerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static final synthetic access$setMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final isDefaultAnimScaleTooBig()Z
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    const-string v0, "iconImageView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getDEFAULT_DRAG_OVER_ANIM_SCALE$p$s1165083175()F

    move-result v0

    mul-float/2addr p0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDrawingInThumbnailView()Z

    move-result v0

    const-string v1, "mImageView"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDrawingInScreenPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0802d5

    goto :goto_0

    :cond_1
    const v2, 0x7f0802d4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "drawable"

    .line 272
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 273
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDrawingInScreenPreview()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "mImageView.drawable"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 279
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_8

    return v2

    .line 283
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const-string v1, "mInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getAlpha()F

    move-result v0

    .line 285
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v2, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setAlpha(F)V

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/FolderIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 287
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setAlpha(F)V

    goto :goto_1

    .line 289
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/FolderIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    :goto_1
    return p1
.end method

.method protected dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V
    .locals 8

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    check-cast v0, Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    .line 170
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v1, v1, v3

    check-cast v1, Landroid/view/View;

    .line 176
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    neg-int v5, v5

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070200

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 177
    invoke-virtual {v3, v5, v6}, Lcom/miui/home/launcher/DragView;->setDragVisualizeOffset(II)V

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const-string v6, "dragView"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v6

    const-string v7, "dragView.content"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 182
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 183
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 184
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_1
    const/4 v0, 0x0

    .line 186
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 187
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragView;->setPivotY(F)V

    .line 188
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 190
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 191
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v2, "mLauncher"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 189
    invoke-virtual {v0, v1, v4, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 193
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void

    .line 190
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const-string v1, "mIconImageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 312
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 313
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 315
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 316
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 317
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v7, "mPreviewContainer"

    if-nez v6, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 319
    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v1

    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v8, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getHeight()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float/2addr v1, v6

    .line 320
    invoke-virtual {v3, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v1, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 324
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_3
    return-object v2
.end method

.method public final getCover()Landroid/widget/ImageView;
    .locals 1

    .line 262
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "mFolderCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected getDragEnterAnimatorValues()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 201
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDefaultAnimScaleTooBig()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getDRAG_OVER_ANIM_SCALE_SMALLER$p$s1165083175()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getDEFAULT_DRAG_OVER_ANIM_SCALE$p$s1165083175()F

    move-result p0

    :goto_0
    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method protected getDragExitAnimatorValues()[F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 207
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDefaultAnimScaleTooBig()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getDRAG_OVER_ANIM_SCALE_SMALLER$p$s1165083175()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getDEFAULT_DRAG_OVER_ANIM_SCALE$p$s1165083175()F

    move-result p0

    :goto_0
    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p0

    return-object v0
.end method

.method public getFolderBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 5

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const-string v2, "mIconImageView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getPreviewArray()[Landroid/widget/ImageView;
    .locals 1

    .line 258
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    if-eqz p0, :cond_0

    check-cast p0, [Landroid/widget/ImageView;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<android.widget.ImageView>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p0, Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewCount()I
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length p0, p0

    return p0
.end method

.method public getPreviewHeight()F
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getPreviewIconHeight()F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0
.end method

.method public getPreviewIconHeight()F
    .locals 1

    .line 242
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 243
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v2, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v5, "mLauncher"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 223
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon1x1$getPreviewPosition$scale$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$getPreviewPosition$scale$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    move-object v9, v0

    check-cast v9, Ljava/util/function/Predicate;

    .line 220
    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 224
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    aget v4, v4, v3

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    aget v5, v5, v1

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    aget v3, v6, v3

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v6, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 225
    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mTmpPos:[F

    aget v1, v6, v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 224
    invoke-virtual {p1, v4, v5, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
            "*>;"
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon1x1$initNoWordAdapter$1;

    move-object v1, p0

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon1x1$initNoWordAdapter$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;Lcom/miui/home/launcher/ItemIcon;)V

    check-cast v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    return-object v0
.end method

.method public invalidatePreviews()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 128
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadItemIcons(Z)V
    .locals 4

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p1, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const-string v1, "mInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconCache:Lcom/miui/home/launcher/IconCache;

    const-string v2, "mIconCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string v3, "mSerialExecutor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onBackAnimStart()V
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setVisibility(I)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getDragEnterAnimatorValues()[F

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIsDragingEnter:Z

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPerformHapticRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const/4 v2, 0x2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOpenFolder:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getDragExitAnimatorValues()[F

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIsDragingEnter:Z

    .line 161
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const v0, 0x7f0a0295

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.preview_icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getItemViews()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 49
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->onFinishInflate()V

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0802d5

    goto :goto_0

    :cond_1
    const v3, 0x7f0802d4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 51
    :goto_1
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x10e0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$2;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/16 v2, 0x12c

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$3;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onFinishInflate$4;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v0, "folder_icon_cover.png"

    .line 86
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const-string v0, "folder_icon_cover_01.png"

    .line 88
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_3
    const v2, 0x7f0a00ef

    .line 90
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    const-string v2, "mFolderCover"

    if-eqz v0, :cond_5

    .line 92
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const v2, 0x7f080239

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v0, 0x7f0a01b0

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "resources"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->calculateItemIconSize(Landroid/content/res/Resources;)V

    return-void

    .line 96
    :cond_8
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.LauncherIconImageView"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_9
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onIconRemoved()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 335
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->onIconRemoved(Lcom/miui/home/launcher/ShortcutInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->onWallpaperColorChanged()V

    .line 102
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    check-cast v0, Ljava/util/function/Supplier;

    .line 112
    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1$onWallpaperColorChanged$2;-><init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;)V

    check-cast v1, Ljava/util/function/Consumer;

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    .line 305
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setVisibility(I)V

    return-void
.end method

.method public showPreview(Z)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderPreviewAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setAlpha(F)V

    .line 236
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->invalidate()V

    .line 238
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElementWhenLauncherInEditMode()V

    return-void
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 2

    .line 353
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->updateSizeOnIconSizeChanged()V

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mPreviewContainer:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    if-nez v0, :cond_0

    const-string v1, "mPreviewContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->requestLayout()V

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_1

    const-string v1, "mImageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    .line 356
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    const-string v0, "mFolderCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
