.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;
.super Landroid/widget/LinearLayout;
.source "FolderIconPreviewContainer1X1.kt"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    }
.end annotation


# instance fields
.field private isHandleMeasured:Z

.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

.field private mItemIconHeight:I

.field private mItemIconWidth:I

.field private mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    const-string p2, "LauncherIconSizeProvider.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/home/launcher/common/IconSizeProvider;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 29
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$canDrawableAnimating(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->canDrawableAnimating(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-object p0
.end method

.method private final canDrawableAnimating(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_0

    .line 139
    instance-of p0, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->isMamlDrawable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final calculateItemIconSize(Landroid/content/res/Resources;)V
    .locals 3

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0701b9

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0701b7

    .line 147
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    const-string v2, "LauncherIconSizeProvider.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v1

    const/4 v2, 0x3

    int-to-float v2, v2

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 151
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIconWidth:I

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 152
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIconHeight:I

    return-void
.end method

.method public final getItemViews()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-object p0
.end method

.method public final loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V
    .locals 12

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v9, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 91
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v3

    if-ge v9, v3, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v3, "info.getAdapter(context).getItem(i) ?: return"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget v3, v10, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v1

    .line 95
    :goto_1
    new-instance v11, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v10

    move-object v6, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;-><init>(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IconCache;ZI)V

    check-cast v11, Ljava/util/function/Function;

    .line 110
    new-instance v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;

    invoke-direct {v3, p0, v10, v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$2;-><init>(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Lcom/miui/home/launcher/ShortcutInfo;I)V

    check-cast v3, Ljava/util/function/Consumer;

    .line 124
    move-object v4, p3

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 95
    invoke-static {v11, v3, v10, v4}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 129
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;

    invoke-direct {p1, p0, v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$3;-><init>(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;I)V

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p1, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->doUIConsumerSerialized(Ljava/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    const v1, 0x7f0a01c7

    .line 64
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderIconPreviewContainer1X1.PreviewIconView"

    if-eqz v1, :cond_8

    check-cast v1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v3, 0x7f0a01c8

    .line 65
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const v3, 0x7f0a01c9

    .line 66
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x7f0a01ca

    .line 67
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const v3, 0x7f0a01cb

    .line 68
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const v3, 0x7f0a01cc

    .line 69
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const v3, 0x7f0a01cd

    .line 70
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const v3, 0x7f0a01ce

    .line 71
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const v3, 0x7f0a01cf

    .line 72
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    .line 63
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-void

    .line 72
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_8
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->isHandleMeasured:Z

    if-nez v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 47
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getFolderPreviewHeight()I

    move-result v0

    .line 51
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->requestLayout()V

    return-void
.end method
