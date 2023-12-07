.class public abstract Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;
.super Landroid/view/ViewGroup;
.source "BaseFolderIconPreviewContainer2X2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFolderIconPreviewContainer2X2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFolderIconPreviewContainer2X2.kt\ncom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,499:1\n1819#2,2:500\n1819#2,2:502\n1819#2,2:504\n*E\n*S KotlinDebug\n*F\n+ 1 BaseFolderIconPreviewContainer2X2.kt\ncom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2\n*L\n343#1,2:500\n473#1,2:502\n480#1,2:504\n*E\n"
.end annotation


# instance fields
.field private final LAYOUT_DEBUGABLE:Z

.field private final TAG:Ljava/lang/String;

.field private mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

.field private final mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

.field private mHeightMeasureSpec:I

.field private final mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mItemsMaxCount:I

.field private mLargeIconNum:I

.field private mPvChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mPvItemLocationInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRealPvChildCount:I

.field private final mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private final mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private mWidthMeasureSpec:I

.field private previewPlaceholderShouldAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    const/4 p1, 0x7

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    const/4 p1, 0x3

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    .line 40
    new-instance p1, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    invoke-direct {p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    .line 46
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 p2, 0x2

    new-array p3, p2, [F

    .line 47
    fill-array-data p3, :array_0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, p3}, Lmiuix/animation/base/AnimSpecialConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type miuix.animation.base.AnimSpecialConfig"

    if-eqz p1, :cond_2

    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 49
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v2, p2, [F

    .line 50
    fill-array-data v2, :array_1

    invoke-virtual {p1, v1, v2}, Lmiuix/animation/base/AnimSpecialConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 52
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    .line 53
    fill-array-data p2, :array_2

    invoke-virtual {p1, v1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const-string p2, "AnimConfig()\n        .se\u2026.SPRING_PHY, 0.95f, 0.2f)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return-void

    .line 50
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f266666    # 0.65f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public static final synthetic access$canDrawableAnimating(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->canDrawableAnimating(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method private final addPlaceholderInternal()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-lt v0, v1, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getPlaceholderIcon()Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final canDrawableAnimating(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 289
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_2

    .line 290
    instance-of p0, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->isMamlDrawable()Z

    move-result p0

    if-nez p0, :cond_1

    .line 291
    :cond_0
    instance-of p0, p1, Lcom/miui/maml/MamlDrawable;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final executePlaceholderAddAnim(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 161
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    goto :goto_2

    .line 162
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 163
    check-cast p1, Landroid/widget/ImageView;

    .line 166
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    iget v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :try_start_2
    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    iget v3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v2

    goto :goto_1

    :catch_0
    move-object v1, p1

    goto :goto_0

    :catch_1
    move-object v0, p1

    move-object v1, v0

    .line 172
    :catch_2
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    const-string v3, "an error is occurred on placeholder anim showing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V

    .line 175
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final executePlaceholderAddAnimInternal(Landroid/widget/ImageView;)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 183
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 184
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-array p0, v2, [Landroid/view/View;

    .line 186
    check-cast p1, Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p0, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    .line 187
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v0, p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    return-void
.end method

.method private final folderIconPlaceholderDrawableMeasure()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->calcDrawableParams()V

    :cond_1
    return-void
.end method

.method private final onMeasureChildCustom(II)V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->preMeasure2x2(II)V

    .line 312
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->preSetup2x2()V

    .line 313
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->LAYOUT_DEBUGABLE:Z

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPvItemLocationInfoList >>> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPvItemLocationInfoList.size  >>> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onMeasureChild2x2()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final removePlaceholderIconItem()V
    .locals 2

    .line 414
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    if-ne v0, v1, :cond_0

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-le v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 417
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 418
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addPlaceholderIconItem(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 394
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 395
    iput-boolean v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    .line 396
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ge p1, v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPlaceholderInternal()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addPreView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 378
    instance-of v0, p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ge v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 382
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderPreviewIconView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 386
    iput v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    .line 388
    :cond_2
    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPlaceholderIconItem(Landroid/content/Context;)V

    goto :goto_1

    .line 379
    :cond_3
    new-instance p0, Ljava/lang/IllegalAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should be a BaseFolderPreviewIconView or a subclass of BaseFolderPreviewIconView!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 359
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getItemInfo(I)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 450
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    return-object p0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 452
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsMaxCount()I
    .locals 0

    .line 486
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    return p0
.end method

.method protected final getLAYOUT_DEBUGABLE()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->LAYOUT_DEBUGABLE:Z

    return p0
.end method

.method public getLargeIconNum()I
    .locals 0

    .line 490
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    return p0
.end method

.method public final getLastView()Landroid/view/View;
    .locals 1

    .line 424
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    :goto_0
    return-object p0
.end method

.method public final getLastVisibleView()Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 2

    .line 428
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    .line 429
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    add-int/lit8 p0, p0, -0x1

    .line 428
    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    :goto_0
    return-object p0
.end method

.method protected final getMFolderIconPlaceholderDrawable()Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return-object p0
.end method

.method protected final getMFolderIconPreviewAnimDelegate()Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    return-object p0
.end method

.method protected final getMHideAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method protected final getMItemsMaxCount()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    return p0
.end method

.method protected final getMLargeIconNum()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    return p0
.end method

.method public final getMPvChildList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    return-object p0
.end method

.method protected final getMPvItemLocationInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMRealPvChildCount()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    return p0
.end method

.method protected final getMShowAnimAlphaConfig()Lmiuix/animation/base/AnimSpecialConfig;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    return-object p0
.end method

.method protected final getMShowAnimScaleConfig()Lmiuix/animation/base/AnimSpecialConfig;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    return-object p0
.end method

.method public final getPlaceholderIcon()Lcom/miui/home/launcher/folder/FolderPreviewIconView;
    .locals 7

    .line 336
    new-instance v6, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getContext()Landroid/content/Context;

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

.method public getPreAddItemInfo(Z)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 437
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getItemInfo(I)Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewIconInfo(I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 494
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_0

    .line 495
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getPreviewPlaceholderShouldAnim()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    return p0
.end method

.method protected final getShortcutInfoSafety(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p0

    .line 465
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public isPreViewContainerOverload()Z
    .locals 1

    .line 445
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPreviewPlaceholder(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)Z
    .locals 0

    const-string p0, "viewParent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return p0
.end method

.method public final loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
    .locals 9

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPreviewAnimDelegate:Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    .line 146
    iget-object v3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 144
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->hidePreviewIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->executePlaceholderAddAnim(Z)V

    .line 155
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mWidthMeasureSpec:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHeightMeasureSpec:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHeightMeasureSpec:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onMeasureChildCustom(II)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 332
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onLayout2x2(ZIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayout2x2(ZIIII)V
    .locals 3

    const/4 p1, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getChildCount()I

    move-result p2

    iget p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 112
    iget-object p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->getGroupRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 113
    iget-object p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 114
    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 115
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 116
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 117
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 113
    invoke-virtual {p4, p5, v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->layout(IIII)V

    .line 119
    iget-boolean p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->LAYOUT_DEBUGABLE:Z

    if-eqz p4, :cond_0

    .line 121
    iget-object p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "largeViewLayout2x2 , index = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , layout = ["

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x5d

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 120
    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->TAG:Ljava/lang/String;

    .line 131
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "onLayout2x2 indexOutOfBoundsException, This usually occurs when threads are concurrent ~"

    .line 128
    invoke-static {p0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mWidthMeasureSpec:I

    .line 296
    iput p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mHeightMeasureSpec:I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->onMeasureChildCustom(II)V

    .line 298
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->folderIconPlaceholderDrawableMeasure()V

    .line 299
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public abstract onMeasureChild2x2()V
.end method

.method public onPause()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 504
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 481
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onPause(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 502
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 474
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 475
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract preMeasure2x2(II)V
.end method

.method public abstract preSetup2x2()V
.end method

.method public final removeLastPreView()V
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getLastView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->removeView(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    iget v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    .line 368
    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    iget v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    if-le v1, v2, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPlaceholderInternal()V

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->removePlaceholderIconItem()V

    .line 372
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    const-string v0, "info"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v10

    const/4 v11, 0x0

    if-eqz p3, :cond_2

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v10, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    move v12, v11

    move v13, v12

    move v14, v13

    goto :goto_0

    :cond_2
    move/from16 v14, p3

    move v12, v11

    move v13, v12

    :goto_0
    if-ge v12, v10, :cond_8

    .line 207
    iget-object v0, v6, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_8

    if-eqz v14, :cond_4

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v7, v12}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getShortcutInfoSafety(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    :goto_1
    move-object v15, v0

    if-eqz v15, :cond_7

    if-nez v15, :cond_5

    .line 218
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget v0, v15, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    move v5, v0

    goto :goto_2

    :cond_6
    move v5, v11

    .line 220
    :goto_2
    new-instance v16, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v15

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;-><init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;ILcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IconCache;Z)V

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/function/Function;

    .line 242
    new-instance v1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;

    invoke-direct {v1, v6, v15, v13}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$2;-><init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Lcom/miui/home/launcher/ShortcutInfo;I)V

    check-cast v1, Ljava/util/function/Consumer;

    .line 258
    move-object v2, v8

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 220
    invoke-static {v0, v1, v15, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    return-void

    .line 263
    :cond_8
    new-instance v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;

    move/from16 v1, p5

    invoke-direct {v0, v6, v13, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$3;-><init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;IZ)V

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, v8}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->doUIConsumerSerialized(Ljava/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    return-void
.end method

.method public final setFolderIconPlaceholderDrawableMatchingWallpaperColor()V
    .locals 4

    .line 342
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 500
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    instance-of v3, v3, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->invalidate()V

    goto :goto_1

    .line 348
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->folderIconPlaceholderDrawableMeasure()V

    return-void
.end method

.method protected final setMFolderIconPlaceholderDrawable(Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mFolderIconPlaceholderDrawable:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    return-void
.end method

.method protected final setMItemsMaxCount(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mItemsMaxCount:I

    return-void
.end method

.method protected final setMLargeIconNum(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mLargeIconNum:I

    return-void
.end method

.method public final setMPvChildList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvChildList:Ljava/util/List;

    return-void
.end method

.method protected final setMPvItemLocationInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mPvItemLocationInfoList:Ljava/util/List;

    return-void
.end method

.method public final setMRealPvChildCount(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->mRealPvChildCount:I

    return-void
.end method

.method protected final setPreviewPlaceholderShouldAnim(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->previewPlaceholderShouldAnim:Z

    return-void
.end method
