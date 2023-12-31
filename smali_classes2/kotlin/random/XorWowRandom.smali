.class public final Lkotlin/random/XorWowRandom;
.super Lkotlin/random/Random;
.source "XorWowRandom.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
.end annotation


# instance fields
.field private addend:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(II)V
    .locals 7

    not-int v5, p1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 29
    invoke-direct/range {v0 .. v6}, Lkotlin/random/XorWowRandom;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    iput p1, p0, Lkotlin/random/XorWowRandom;->x:I

    iput p2, p0, Lkotlin/random/XorWowRandom;->y:I

    iput p3, p0, Lkotlin/random/XorWowRandom;->z:I

    iput p4, p0, Lkotlin/random/XorWowRandom;->w:I

    iput p5, p0, Lkotlin/random/XorWowRandom;->v:I

    iput p6, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 32
    iget p1, p0, Lkotlin/random/XorWowRandom;->x:I

    iget p2, p0, Lkotlin/random/XorWowRandom;->y:I

    or-int/2addr p1, p2

    iget p2, p0, Lkotlin/random/XorWowRandom;->z:I

    or-int/2addr p1, p2

    iget p2, p0, Lkotlin/random/XorWowRandom;->w:I

    or-int/2addr p1, p2

    iget p2, p0, Lkotlin/random/XorWowRandom;->v:I

    or-int/2addr p1, p2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x40

    :goto_1
    if-ge p2, p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->nextInt()I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initial state must have at least one non-zero element."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public nextBits(I)I
    .locals 0

    .line 55
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->nextInt()I

    move-result p0

    invoke-static {p0, p1}, Lkotlin/random/RandomKt;->takeUpperBits(II)I

    move-result p0

    return p0
.end method

.method public nextInt()I
    .locals 3

    .line 41
    iget v0, p0, Lkotlin/random/XorWowRandom;->x:I

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    .line 43
    iget v1, p0, Lkotlin/random/XorWowRandom;->y:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->x:I

    .line 44
    iget v1, p0, Lkotlin/random/XorWowRandom;->z:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->y:I

    .line 45
    iget v1, p0, Lkotlin/random/XorWowRandom;->w:I

    iput v1, p0, Lkotlin/random/XorWowRandom;->z:I

    .line 46
    iget v1, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 47
    iput v1, p0, Lkotlin/random/XorWowRandom;->w:I

    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    .line 49
    iput v0, p0, Lkotlin/random/XorWowRandom;->v:I

    .line 50
    iget v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    const v2, 0x587c5

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/random/XorWowRandom;->addend:I

    .line 51
    iget p0, p0, Lkotlin/random/XorWowRandom;->addend:I

    add-int/2addr v0, p0

    return v0
.end method
