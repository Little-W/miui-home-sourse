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

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {}, Lcom/google/android/filament/ColorGrading;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    .line 152
    new-instance v0, Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mFinalizer:Lcom/google/android/filament/ColorGrading$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;
    .locals 4

    .line 561
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/ColorGrading;->access$1800(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 563
    new-instance p1, Lcom/google/android/filament/ColorGrading;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/ColorGrading;-><init>(J)V

    return-object p1

    .line 562
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create ColorGrading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public channelMixer([F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 372
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 373
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 374
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 376
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->access$1100(J[F[F[F)V

    return-object p0
.end method

.method public contrast(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$1400(JF)V

    return-object p0
.end method

.method public curves([F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 541
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 542
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 543
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 545
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->access$1700(J[F[F[F)V

    return-object p0
.end method

.method public dimensions(I)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$300(JI)V

    return-object p0
.end method

.method public exposure(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 286
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$800(JF)V

    return-object p0
.end method

.method public format(Lcom/google/android/filament/ColorGrading$LutFormat;)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading$LutFormat;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$200(JI)V

    return-object p0
.end method

.method public gamutMapping(Z)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$700(JZ)V

    return-object p0
.end method

.method public luminanceScaling(Z)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$600(JZ)V

    return-object p0
.end method

.method public nightAdaptation(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 302
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$900(JF)V

    return-object p0
.end method

.method public quality(Lcom/google/android/filament/ColorGrading$QualityLevel;)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading$QualityLevel;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$100(JI)V

    return-object p0
.end method

.method public saturation(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 516
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$1600(JF)V

    return-object p0
.end method

.method public shadowsMidtonesHighlights([F[F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 6

    .line 412
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 413
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 414
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 415
    invoke-static {p4}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 417
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/ColorGrading;->access$1200(J[F[F[F[F)V

    return-object p0
.end method

.method public slopeOffsetPower([F[F[F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 450
    invoke-static {p1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 451
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 452
    invoke-static {p3}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    .line 454
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->access$1300(J[F[F[F)V

    return-object p0
.end method

.method public toneMapper(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 4

    .line 218
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/ToneMapper;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/ColorGrading;->access$400(JJ)V

    return-object p0
.end method

.method public toneMapping(Lcom/google/android/filament/ColorGrading$ToneMapping;)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading$ToneMapping;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$500(JI)V

    return-object p0
.end method

.method public vibrance(F)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ColorGrading;->access$1500(JF)V

    return-object p0
.end method

.method public whiteBalance(FF)Lcom/google/android/filament/ColorGrading$Builder;
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/ColorGrading;->access$1000(JFF)V

    return-object p0
.end method
