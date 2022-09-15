.class public final Lmiuix/smooth/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MiuixSmoothContainerDrawable:[I

.field public static final MiuixSmoothContainerDrawable_android_bottomLeftRadius:I = 0x3

.field public static final MiuixSmoothContainerDrawable_android_bottomRightRadius:I = 0x4

.field public static final MiuixSmoothContainerDrawable_android_layerType:I = 0x5

.field public static final MiuixSmoothContainerDrawable_android_radius:I = 0x0

.field public static final MiuixSmoothContainerDrawable_android_topLeftRadius:I = 0x1

.field public static final MiuixSmoothContainerDrawable_android_topRightRadius:I = 0x2

.field public static final MiuixSmoothContainerDrawable_miuix_strokeColor:I = 0x6

.field public static final MiuixSmoothContainerDrawable_miuix_strokeWidth:I = 0x7

.field public static final MiuixSmoothFrameLayout:[I

.field public static final MiuixSmoothFrameLayout_android_bottomLeftRadius:I = 0x3

.field public static final MiuixSmoothFrameLayout_android_bottomRightRadius:I = 0x4

.field public static final MiuixSmoothFrameLayout_android_layerType:I = 0x5

.field public static final MiuixSmoothFrameLayout_android_radius:I = 0x0

.field public static final MiuixSmoothFrameLayout_android_topLeftRadius:I = 0x1

.field public static final MiuixSmoothFrameLayout_android_topRightRadius:I = 0x2

.field public static final MiuixSmoothFrameLayout_miuix_strokeColor:I = 0x6

.field public static final MiuixSmoothFrameLayout_miuix_strokeWidth:I = 0x7

.field public static final MiuixSmoothGradientDrawable:[I

.field public static final MiuixSmoothGradientDrawable_android_layerType:I = 0x0

.field public static final MiuixSmoothGradientDrawable_miuix_strokeColor:I = 0x1

.field public static final MiuixSmoothGradientDrawable_miuix_strokeWidth:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 21
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable:[I

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout:[I

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothGradientDrawable:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10101a8
        0x10101a9
        0x10101aa
        0x10101ab
        0x10101ac
        0x1010354
        0x7f0403ed
        0x7f0403ee
    .end array-data

    :array_1
    .array-data 4
        0x10101a8
        0x10101a9
        0x10101aa
        0x10101ab
        0x10101ac
        0x1010354
        0x7f0403ed
        0x7f0403ee
    .end array-data

    :array_2
    .array-data 4
        0x1010354
        0x7f0403ed
        0x7f0403ee
    .end array-data
.end method
