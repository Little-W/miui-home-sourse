.class public final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;
.super Landroid/widget/FrameLayout;
.source "LauncherFolder2x2IconContainer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherFolder2x2IconContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherFolder2x2IconContainer.kt\ncom/miui/home/launcher/folder/LauncherFolder2x2IconContainer\n*L\n1#1,83:1\n*E\n"
.end annotation


# instance fields
.field private final DEBUG_ALIGNMENT:Z

.field private final TAG:Ljava/lang/String;

.field private final cellX:I

.field private final cellY:I

.field private final mContainerPaddingTop$delegate:Lkotlin/Lazy;

.field private mHeightMeasureSpec:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->DEBUG_ALIGNMENT:Z

    const-string p1, "LauncherFolder2x2IconContainer"

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->TAG:Ljava/lang/String;

    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellX:I

    .line 27
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellY:I

    .line 28
    sget-object p1, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;->INSTANCE:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mContainerPaddingTop$delegate:Lkotlin/Lazy;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->setClipChildren(Z)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->setClipToPadding(Z)V

    return-void
.end method

.method private final getMContainerPaddingTop()I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mContainerPaddingTop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final resolveTopPadding(Landroid/graphics/Rect;)V
    .locals 3

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->getMContainerPaddingTop()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->setPadding(IIII)V

    goto :goto_0

    .line 80
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->getMContainerPaddingTop()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    .line 46
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellX:I

    iget v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellY:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    .line 49
    iget-boolean v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->DEBUG_ALIGNMENT:Z

    if-eqz v1, :cond_0

    .line 52
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 53
    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 56
    iget-object v4, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->TAG:Ljava/lang/String;

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget content span = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") size = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_1

    if-lt v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 65
    :goto_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 66
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 67
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mWidthMeasureSpec:I

    .line 68
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mHeightMeasureSpec:I

    const-string p1, "padding"

    .line 69
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->resolveTopPadding(Landroid/graphics/Rect;)V

    .line 70
    iget p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mWidthMeasureSpec:I

    iget p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mHeightMeasureSpec:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
