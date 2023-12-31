.class public final Lkotlinx/serialization/internal/IntArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "PrimitiveArraysSerializers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder<",
        "[I>;"
    }
.end annotation


# instance fields
.field private buffer:[I

.field private position:I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    .line 143
    iput-object p1, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->buffer:[I

    .line 144
    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 148
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/IntArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public final append$kotlinx_serialization_core(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-static {p0, v1, v0, v2}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->buffer:[I

    invoke-virtual {p0}, Lkotlinx/serialization/internal/IntArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->position:I

    aput p1, v0, v1

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lkotlinx/serialization/internal/IntArrayBuilder;->build$kotlinx_serialization_core()[I

    move-result-object p0

    return-object p0
.end method

.method public build$kotlinx_serialization_core()[I
    .locals 1

    .line 161
    iget-object v0, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->buffer:[I

    invoke-virtual {p0}, Lkotlinx/serialization/internal/IntArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->buffer:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 153
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->buffer:[I

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 0

    .line 144
    iget p0, p0, Lkotlinx/serialization/internal/IntArrayBuilder;->position:I

    return p0
.end method
