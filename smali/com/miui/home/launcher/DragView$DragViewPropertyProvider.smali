.class Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;
.super Ljava/lang/Object;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragViewPropertyProvider"
.end annotation


# static fields
.field private static final MULTI_DRAG_VIEW_ALPHA:[F

.field private static final MULTI_DRAG_VIEW_OFFSET_X:[F

.field private static final MULTI_DRAG_VIEW_OFFSET_Y:[F

.field private static final MULTI_DRAG_VIEW_ROTATION:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 361
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_ROTATION:[F

    .line 362
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_OFFSET_X:[F

    .line 363
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_OFFSET_Y:[F

    .line 364
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_ALPHA:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x40400000    # 3.0f
        -0x3f400000    # -6.0f
        -0x3ef00000    # -9.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41000000    # 8.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        -0x3f800000    # -4.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getAlpha(II)F
    .locals 5

    .line 376
    sget-object v0, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_ALPHA:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-le p0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-lt p0, v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 381
    aget v0, v0, v4

    add-int/lit8 p0, p0, 0x1

    sub-int/2addr p0, v1

    int-to-float p0, p0

    .line 383
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    div-float/2addr p0, p1

    sub-float/2addr v2, v0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    mul-float/2addr p0, p0

    sub-float/2addr p1, p0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {v0, p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getPropertyFromArray([FI)F

    move-result v2

    :goto_0
    return v2
.end method

.method public static getOffsetX(I)F
    .locals 1

    .line 397
    sget-object v0, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_OFFSET_X:[F

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getPropertyFromArray([FI)F

    move-result p0

    return p0
.end method

.method public static getOffsetY(I)F
    .locals 1

    .line 401
    sget-object v0, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_OFFSET_Y:[F

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getPropertyFromArray([FI)F

    move-result p0

    return p0
.end method

.method private static getPropertyFromArray([FI)F
    .locals 1

    .line 368
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 371
    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public static getRotation(I)F
    .locals 1

    .line 393
    sget-object v0, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->MULTI_DRAG_VIEW_ROTATION:[F

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getPropertyFromArray([FI)F

    move-result p0

    return p0
.end method
