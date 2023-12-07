.class public Lcom/miui/home/launcher/folder/FolderIcon2x2;
.super Lcom/miui/home/launcher/FolderIcon;
.source "FolderIcon2x2.kt"

# interfaces
.implements Lcom/miui/home/launcher/folder/ListenerInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIcon2x2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIcon2x2.kt\ncom/miui/home/launcher/folder/FolderIcon2x2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,472:1\n1828#2,3:473\n1828#2,3:478\n37#3,2:476\n*E\n*S KotlinDebug\n*F\n+ 1 FolderIcon2x2.kt\ncom/miui/home/launcher/folder/FolderIcon2x2\n*L\n98#1,3:473\n398#1,3:478\n267#1,2:476\n*E\n"
.end annotation


# instance fields
.field protected mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

.field protected mFolderCover:Landroid/widget/ImageView;

.field protected mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mItemsMaxCount:I

.field private mLargeIconNum:I

.field private mPreViewLastRefreshTime:J

.field protected mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field protected mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field private mScreenRefreshRate:I

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

    const/16 p1, 0x8

    .line 34
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mScreenRefreshRate:I

    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    const/4 p1, 0x7

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mItemsMaxCount:I

    .line 345
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "Application.getLauncherApplication()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->access$getSLayerPaint$p$s1165083175()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setLayerPaint(Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->enableDrawTouchMask(Z)V

    return-void
.end method

.method public static final synthetic access$getFolderBgGridFourIcon(Lcom/miui/home/launcher/folder/FolderIcon2x2;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderBgGridFourIcon(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFolderBgGridFourLight(Lcom/miui/home/launcher/folder/FolderIcon2x2;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderBgGridFourLight(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getMIconCache$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method public static final synthetic access$getMInfo$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMScreenRefreshRate$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mScreenRefreshRate:I

    return p0
.end method

.method public static final synthetic access$getSLayerPaint$p$s1165083175()Landroid/graphics/Paint;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/home/launcher/FolderIcon;->sLayerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static final synthetic access$setMFolderBackground$p(Lcom/miui/home/launcher/folder/FolderIcon2x2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final adjustsAllIconContainerNotClipChildren()V
    .locals 4

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->setClipChildren(Z)V

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconContainer:Landroid/widget/FrameLayout;

    const-string v2, "mIconContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v1, :cond_7

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_4

    const-string v1, "mPreviewContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setClipChildren(Z)V

    :cond_5
    return-void

    .line 91
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createOrRemoveView()V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v2, "mPreviewContainer"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getItemsMaxCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_8

    .line 142
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewIconView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-gez v1, :cond_8

    .line 145
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v1

    sub-int v1, v0, v1

    if-gez v1, :cond_8

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->removeLastPreView()V

    goto :goto_1

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->addItemOnclickListener()V

    return-void
.end method


# virtual methods
.method public addItemOnclickListener()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_0

    const-string v1, "mPreviewContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    .line 474
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v3, :cond_3

    .line 99
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    if-ge v2, v5, :cond_2

    move-object v5, p0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    check-cast v5, Lcom/miui/home/launcher/folder/ListenerInfo;

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setViewClickListener(Lcom/miui/home/launcher/folder/ListenerInfo;)V

    :cond_3
    if-eqz v3, :cond_5

    .line 101
    iget v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    if-ge v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setClickable(Z)V

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDrawingInThumbnailView()Z

    move-result v0

    const-string v1, "mImageView"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDrawingInScreenPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDrawingInScreenPreview()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_7

    check-cast v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->isDraggingEnter()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "mImageView.drawable"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 311
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.folder.LauncherFolder2x2IconImageView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_9

    return v2

    .line 320
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const-string v1, "mInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_d

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getAlpha()F

    move-result v0

    .line 322
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v2, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setAlpha(F)V

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/FolderIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 324
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setAlpha(F)V

    goto :goto_1

    .line 326
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/FolderIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    :goto_1
    return p1
.end method

.method protected dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V
    .locals 9

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->isPreViewContainerOverload()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewIconView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v3

    .line 177
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    .line 180
    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v4, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 181
    invoke-virtual {v4}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getLastVisibleView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v3, v4

    .line 184
    :cond_5
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v4, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const/4 v1, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPreAddItemInfo(Z)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    move-result-object v2

    :cond_7
    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 185
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_8
    move v2, v4

    .line 186
    :goto_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    const-string v6, "dragView"

    .line 188
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v6

    const-string v7, "dragView.content"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 191
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/DragView;->setFlagBigFolderAnimStyle(Z)V

    .line 192
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v7

    .line 194
    instance-of v8, v7, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v8, :cond_9

    .line 195
    check-cast v7, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 196
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float v6, v2, v6

    .line 199
    sget-object v2, Lcom/miui/home/launcher/folder/BigFolderConfig;->Companion:Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;->bigFolderPaddingTop()I

    move-result v2

    goto :goto_2

    :cond_9
    move v2, v4

    .line 203
    :goto_2
    invoke-virtual {v5, v4, v2}, Lcom/miui/home/launcher/DragView;->setDragVisualizeOffset(II)V

    .line 204
    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    if-eqz v0, :cond_a

    .line 207
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 208
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_a
    const/4 v0, 0x0

    .line 210
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 211
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/DragView;->setPivotY(F)V

    .line 212
    check-cast v3, Landroid/view/View;

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 214
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 215
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_b

    goto :goto_3

    :cond_b
    move v1, v4

    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v3, "mLauncher"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 213
    invoke-virtual {v0, v2, v1, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 217
    new-instance p1, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$dropIconIntoFolderIcon$3;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v5, p1}, Lcom/miui/home/launcher/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    return-void

    .line 214
    :cond_c
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const-string v1, "mIconImageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 349
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 350
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 352
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 353
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 354
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v7, "mPreviewContainer"

    if-nez v6, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 356
    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v1

    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v8, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v8}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getHeight()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float/2addr v1, v6

    .line 357
    invoke-virtual {v3, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v1, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->draw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 361
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_3
    return-object v2
.end method

.method public getCover()Landroid/widget/ImageView;
    .locals 1

    .line 271
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "mFolderCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getFolderBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected final getMDefaultFolderBackground()Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-nez p0, :cond_0

    const-string v0, "mDefaultFolderBackground"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected final getMFolderCover()Landroid/widget/ImageView;
    .locals 1

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "mFolderCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected final getMImageView()Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez p0, :cond_0

    const-string v0, "mImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected final getMItemsMaxCount()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mItemsMaxCount:I

    return p0
.end method

.method protected final getMLargeIconNum()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    return p0
.end method

.method public final getMPreViewLastRefreshTime()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreViewLastRefreshTime:J

    return-wide v0
.end method

.method protected final getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected final getMPreviewIconsContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
    .locals 1

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewIconsContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getPreviewArray()[Landroid/widget/ImageView;
    .locals 1

    .line 267
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 477
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, [Landroid/widget/ImageView;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPreviewByComponentName(Landroid/content/ComponentName;IJ)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 11

    const/4 v0, 0x0

    .line 435
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    .line 438
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v4

    if-gtz v4, :cond_0

    return-object v0

    .line 445
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v4

    move-object v5, v1

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_6

    .line 446
    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v7, "mPreviewContainer"

    if-nez v6, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPreviewIconInfo(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 447
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 452
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v9

    if-ne v9, p2, :cond_5

    iget-wide v9, v6, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v6, v9, p3

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v6, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_5

    .line 454
    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v6, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 456
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v5, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-object v1, v5

    :cond_7
    if-nez v1, :cond_9

    .line 467
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    :cond_8
    move-object v1, v0

    :cond_9
    return-object v1
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

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
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_0

    const-string v1, "mPreviewContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getPreviewHeight()F
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 242
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 243
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 244
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sub-float/2addr p0, v0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewIconHeight()F
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 258
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method public getPreviewIconView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 7

    .line 78
    new-instance v6, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public getPreviewItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_0

    const-string v2, "mPreviewIconsContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v2, "mLauncher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 233
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon2x2$getPreviewPosition$scale$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$getPreviewPosition$scale$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    move-object v9, v0

    check-cast v9, Ljava/util/function/Predicate;

    .line 230
    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 234
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    aget v2, v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    aget v4, v4, v1

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    aget v3, v5, v3

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v6, "mPreviewContainer"

    if-nez v5, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 235
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mTmpPos:[F

    aget v1, v5, v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 234
    invoke-virtual {p1, v2, v4, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method protected final getSTmpCanvas()Landroid/graphics/Canvas;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->sTmpCanvas:Landroid/graphics/Canvas;

    return-object p0
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

    .line 379
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon2x2$initNoWordAdapter$1;

    move-object v1, p0

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2$initNoWordAdapter$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;Lcom/miui/home/launcher/ItemIcon;)V

    check-cast v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    return-object v0
.end method

.method public invalidatePreviews()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 132
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public loadItemIcons(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->loadItemIcons(ZZ)V

    return-void
.end method

.method public loadItemIcons(ZZ)V
    .locals 6

    .line 157
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_0

    const-string p1, "mPreviewContainer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const-string p1, "mInfo"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconCache:Lcom/miui/home/launcher/IconCache;

    const-string v3, "mIconCache"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v3

    .line 162
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p1, "mSerialExecutor"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v5, p2

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBackAnimStart()V
    .locals 1

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIsDragingEnter:Z

    .line 280
    sget-object v0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v1, :cond_0

    const-string v2, "mPreviewContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleEachIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V

    .line 281
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez p1, :cond_1

    const-string v0, "mImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 282
    instance-of v0, p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    if-eqz v0, :cond_2

    .line 283
    check-cast p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    invoke-interface {p1}, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;->onDragEnter()V

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDragOpenFolder:Ljava/lang/Runnable;

    const-wide/16 v0, 0x640

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPerformHapticRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x96

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIsDragingEnter:Z

    .line 293
    sget-object v0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v1, :cond_0

    const-string v2, "mPreviewContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleEachIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V

    .line 294
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez p1, :cond_1

    const-string v0, "mImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 295
    instance-of v0, p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    if-eqz v0, :cond_2

    .line 296
    check-cast p1, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;

    invoke-interface {p1}, Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;->onDragExit()V

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 300
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const v0, 0x7f0a0295

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.preview_icons_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    .line 49
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->onFinishInflate()V

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<BaseFolderI\u2026.preview_icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v0, "folder_cover_grids_four_reserved.png"

    .line 53
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "folder_cover_grids_four_01_reserved.png"

    .line 55
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    const v1, 0x7f0a00ef

    .line 57
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    const-string v1, "mFolderCover"

    if-eqz v0, :cond_2

    .line 59
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const v1, 0x7f080239

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v0, 0x7f0a01b0

    .line 63
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->adjustsAllIconContainerNotClipChildren()V

    return-void

    .line 63
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.LauncherIconImageView"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onIconRemoved()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 370
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v2, :cond_0

    const-string v3, "mPreviewContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 372
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->onIconRemoved(Lcom/miui/home/launcher/ShortcutInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->onPause()V

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->onResume()V

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onResume()V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 479
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 399
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 400
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPreviewIconInfo(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 401
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 402
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    .line 403
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 404
    invoke-static {v2}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->onWallpaperColorChanged()V

    .line 107
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    check-cast v0, Ljava/util/function/Supplier;

    .line 114
    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2$onWallpaperColorChanged$2;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2;)V

    check-cast v1, Ljava/util/function/Consumer;

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    .line 127
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    .line 342
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p0, :cond_0

    const-string v0, "mPreviewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method protected final setMDefaultFolderBackground(Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mDefaultFolderBackground:Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    return-void
.end method

.method protected final setMFolderCover(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    return-void
.end method

.method protected final setMImageView(Lcom/miui/home/launcher/LauncherIconImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-void
.end method

.method protected final setMItemsMaxCount(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mItemsMaxCount:I

    return-void
.end method

.method protected final setMLargeIconNum(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mLargeIconNum:I

    return-void
.end method

.method public final setMPreViewLastRefreshTime(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreViewLastRefreshTime:J

    return-void
.end method

.method protected final setMPreviewContainer(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    return-void
.end method

.method protected final setMPreviewIconsContainer(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewIconsContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    return-void
.end method

.method public showPreview(Z)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const-string v1, "mPreviewContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderPreviewAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setAlpha(F)V

    .line 251
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->invalidate()V

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElementWhenLauncherInEditMode()V

    return-void
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 2

    .line 391
    invoke-super {p0}, Lcom/miui/home/launcher/FolderIcon;->updateSizeOnIconSizeChanged()V

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mPreviewContainer:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-nez v0, :cond_0

    const-string v1, "mPreviewContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->requestLayout()V

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-nez v0, :cond_1

    const-string v1, "mImageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    .line 394
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;->mFolderCover:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    const-string v0, "mFolderCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
