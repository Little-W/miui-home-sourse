.class public Lcom/google/android/filament/ColorGrading$Builder;
.super Ljava/lang/Object;
.source "ColorGrading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ColorGrading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {}, Lcom/google/android/filament/ColorGrading;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    .line 137
    new-instance v0, Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mFinalizer:Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;
    .locals 2

    .line 428
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/ColorGrading;->access$1100(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Lcom/google/android/filament/ColorGrading;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/ColorGrading;-><init>(J)V

    return-object v0

    .line 429
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create ColorGrading"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public channelMixer([F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 239
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 240
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 241
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 243
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->access$400(J[F[F[F)V

    return-object p0
.end method

.method public contrast(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 341
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$700(JF)V

    return-object p0
.end method

.method public curves([F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 408
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 409
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 410
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 412
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->access$1000(J[F[F[F)V

    return-object p0
.end method

.method public quality(Lcom/google/android/filament/ColorGrading$QualityLevel;)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading$QualityLevel;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$100(JI)V

    return-object p0
.end method

.method public saturation(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$900(JF)V

    return-object p0
.end method

.method shadowsMidtonesHighlights([F[F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 6

    .line 279
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 280
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 281
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 282
    invoke-static {p4}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 284
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/ColorGrading;->access$500(J[F[F[F[F)V

    return-object p0
.end method

.method slopeOffsetPower([F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 317
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 318
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 319
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 321
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->access$600(J[F[F[F)V

    return-object p0
.end method

.method public toneMapping(Lcom/google/android/filament/ColorGrading$ToneMapping;)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading$ToneMapping;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$200(JI)V

    return-object p0
.end method

.method vibrance(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$800(JF)V

    return-object p0
.end method

.method public whiteBalance(FF)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/ColorGrading;->access$300(JFF)V

    return-object p0
.end method
