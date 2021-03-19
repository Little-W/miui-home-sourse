.class public Lcom/google/android/filament/ColorGrading;
.super Ljava/lang/Object;
.source "ColorGrading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ColorGrading$Builder;,
        Lcom/google/android/filament/ColorGrading$ToneMapping;,
        Lcom/google/android/filament/ColorGrading$QualityLevel;
    }
.end annotation


# instance fields
.field mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-wide p1, p0, Lcom/google/android/filament/ColorGrading;->mNativeObject:J

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 87
    invoke-static {}, Lcom/google/android/filament/ColorGrading;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JI)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderQuality(JI)V

    return-void
.end method

.method static synthetic access$1000(J[F[F[F)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/ColorGrading;->nBuilderCurves(J[F[F[F)V

    return-void
.end method

.method static synthetic access$1100(JJ)J
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(J)V
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/filament/ColorGrading;->nDestroyBuilder(J)V

    return-void
.end method

.method static synthetic access$200(JI)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderToneMapping(JI)V

    return-void
.end method

.method static synthetic access$300(JFF)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderWhiteBalance(JFF)V

    return-void
.end method

.method static synthetic access$400(J[F[F[F)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/ColorGrading;->nBuilderChannelMixer(J[F[F[F)V

    return-void
.end method

.method static synthetic access$500(J[F[F[F[F)V
    .locals 0

    .line 87
    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/ColorGrading;->nBuilderShadowsMidtonesHighlights(J[F[F[F[F)V

    return-void
.end method

.method static synthetic access$600(J[F[F[F)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/ColorGrading;->nBuilderSlopeOffsetPower(J[F[F[F)V

    return-void
.end method

.method static synthetic access$700(JF)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderContrast(JF)V

    return-void
.end method

.method static synthetic access$800(JF)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderVibrance(JF)V

    return-void
.end method

.method static synthetic access$900(JF)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/ColorGrading;->nBuilderSaturation(JF)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderChannelMixer(J[F[F[F)V
.end method

.method private static native nBuilderContrast(JF)V
.end method

.method private static native nBuilderCurves(J[F[F[F)V
.end method

.method private static native nBuilderQuality(JI)V
.end method

.method private static native nBuilderSaturation(JF)V
.end method

.method private static native nBuilderShadowsMidtonesHighlights(J[F[F[F[F)V
.end method

.method private static native nBuilderSlopeOffsetPower(J[F[F[F)V
.end method

.method private static native nBuilderToneMapping(JI)V
.end method

.method private static native nBuilderVibrance(JF)V
.end method

.method private static native nBuilderWhiteBalance(JFF)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 458
    iput-wide v0, p0, Lcom/google/android/filament/ColorGrading;->mNativeObject:J

    return-void
.end method

.method public getNativeObject()J
    .locals 4

    .line 451
    iget-wide v0, p0, Lcom/google/android/filament/ColorGrading;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed ColorGrading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
