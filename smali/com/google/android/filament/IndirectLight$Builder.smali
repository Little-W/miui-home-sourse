.class public Lcom/google/android/filament/IndirectLight$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/IndirectLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/IndirectLight$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/IndirectLight$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/IndirectLight;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    new-instance v0, Lcom/google/android/filament/IndirectLight$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/IndirectLight$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mFinalizer:Lcom/google/android/filament/IndirectLight$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/IndirectLight;->access$700(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/IndirectLight;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/IndirectLight;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create IndirectLight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intensity(F)Lcom/google/android/filament/IndirectLight$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/IndirectLight;->access$500(JF)V

    return-object p0
.end method

.method public irradiance(I[F)Lcom/google/android/filament/IndirectLight$Builder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "3 bands SH, array must be at least 9 x float3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bands must be 1, 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    array-length v0, p2

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "2 bands SH, array must be at least 4 x float3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v0, p2

    if-lt v0, v1, :cond_5

    :goto_0
    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/IndirectLight;->access$200(JI[F)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "1 band SH, array must be at least 1 x float3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public irradiance(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$Builder;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/IndirectLight;->access$400(JJ)V

    return-object p0
.end method

.method public radiance(I[F)Lcom/google/android/filament/IndirectLight$Builder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "3 bands SH, array must be at least 9 x float3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bands must be 1, 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    array-length v0, p2

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "2 bands SH, array must be at least 4 x float3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v0, p2

    if-lt v0, v1, :cond_5

    :goto_0
    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/IndirectLight;->access$300(JI[F)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "1 band SH, array must be at least 1 x float3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reflections(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$Builder;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/IndirectLight;->access$100(JJ)V

    return-object p0
.end method

.method public rotation([F)Lcom/google/android/filament/IndirectLight$Builder;
    .locals 11

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$Builder;->mNativeBuilder:J

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    const/4 v6, 0x4

    aget v6, p1, v6

    const/4 v7, 0x5

    aget v7, p1, v7

    const/4 v8, 0x6

    aget v8, p1, v8

    const/4 v9, 0x7

    aget v9, p1, v9

    const/16 v10, 0x8

    aget v10, p1, v10

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/IndirectLight;->access$600(JFFFFFFFFF)V

    return-object p0
.end method
