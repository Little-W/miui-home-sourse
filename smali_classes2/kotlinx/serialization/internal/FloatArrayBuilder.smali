.class public final Lkotlinx/serialization/internal/FloatArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "PrimitiveArraysSerializers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder<",
        "[F>;"
    }
.end annotation


# instance fields
.field private buffer:[F

.field private position:I


# direct methods
.method public constructor <init>([F)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    .line 243
    iput-object p1, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->buffer:[F

    .line 244
    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 248
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/FloatArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public final append$kotlinx_serialization_core(F)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 257
    invoke-static {p0, v1, v0, v2}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->buffer:[F

    invoke-virtual {p0}, Lkotlinx/serialization/internal/FloatArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->position:I

    aput p1, v0, v1

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lkotlinx/serialization/internal/FloatArrayBuilder;->build$kotlinx_serialization_core()[F

    move-result-object v0

    return-object v0
.end method

.method public build$kotlinx_serialization_core()[F
    .locals 2

    .line 261
    iget-object v0, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->buffer:[F

    invoke-virtual {p0}, Lkotlinx/serialization/internal/FloatArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    .line 252
    iget-object v0, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->buffer:[F

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 253
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->buffer:[F

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 1

    .line 244
    iget v0, p0, Lkotlinx/serialization/internal/FloatArrayBuilder;->position:I

    return v0
.end method
