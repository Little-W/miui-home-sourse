.class public final Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;
.super Ljava/lang/Object;
.source "FoldScreenIndexCalculator.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->INSTANCE:Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateValidSteps(IIIZZ)I
    .locals 1

    .line 29
    rem-int/lit8 v0, p1, 0x2

    if-eqz p5, :cond_1

    .line 30
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->isOddScreenCount(I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-gt p1, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private final isOddScreenCount(I)Z
    .locals 0

    .line 36
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final obtainValidCurrentScreenIndex(IIIZZ)I
    .locals 8

    add-int/lit8 v0, p2, -0x1

    .line 16
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 19
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->calculateValidSteps(IIIZZ)I

    move-result p0

    sub-int/2addr p1, p0

    :cond_1
    :goto_0
    return p1
.end method
