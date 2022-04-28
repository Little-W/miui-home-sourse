.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,377:1\n1#2:378\n*E\n"
.end annotation


# static fields
.field public static final Default:Lkotlin/random/Random$Default;

.field private static final defaultRandom:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/Random$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 272
    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v0}, Lkotlin/internal/PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v0

    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultRandom$cp()Lkotlin/random/Random;
    .locals 1

    .line 20
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    return-object v0
.end method


# virtual methods
.method public abstract nextBits(I)I
.end method

.method public nextInt()I
    .locals 1

    const/16 v0, 0x20

    .line 40
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, p1}, Lkotlin/random/Random;->nextInt(II)I

    move-result p1

    return p1
.end method

.method public nextInt(II)I
    .locals 3

    .line 65
    invoke-static {p1, p2}, Lkotlin/random/RandomKt;->checkRangeBounds(II)V

    sub-int v0, p2, p1

    if-gtz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-le p2, v0, :cond_0

    return v0

    :cond_2
    :goto_1
    neg-int p2, v0

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    .line 69
    invoke-static {v0}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result p2

    .line 70
    invoke-virtual {p0, p2}, Lkotlin/random/Random;->nextBits(I)I

    move-result p2

    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    .line 75
    rem-int v1, p2, v0

    sub-int/2addr p2, v1

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p2, v2

    if-ltz p2, :cond_3

    move p2, v1

    :goto_2
    add-int/2addr p1, p2

    return p1
.end method
