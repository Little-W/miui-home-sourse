.class public final Lcom/miui/home/launcher/folder/FolderIcon2x2_4;
.super Lcom/miui/home/launcher/folder/FolderIcon2x2;
.source "FolderIcon2x2_4.kt"

# interfaces
.implements Lcom/miui/home/launcher/folder/ListenerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->setMLargeIconNum(I)V

    const/4 p1, 0x7

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->setMItemsMaxCount(I)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method


# virtual methods
.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v2, "mLauncher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    .line 29
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$getPreviewPosition$scale$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4$getPreviewPosition$scale$1;-><init>(Lcom/miui/home/launcher/folder/FolderIcon2x2_4;)V

    move-object v9, v0

    check-cast v9, Ljava/util/function/Predicate;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 26
    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0029

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    int-to-float v6, v5

    div-float/2addr v4, v6

    int-to-float v2, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v0

    .line 32
    iget-object v7, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    aget v7, v7, v1

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredWidth()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v5

    int-to-float v5, v8

    sub-float/2addr v7, v5

    .line 36
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    aget v5, v5, v3

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    aget v3, v8, v3

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 37
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->mTmpPos:[F

    aget v1, v4, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_4;->getMPreviewContainer()Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v6

    mul-float/2addr p0, v2

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 36
    invoke-virtual {p1, v5, v7, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method
