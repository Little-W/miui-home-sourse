.class public Lcom/google/android/filament/Skybox;
.super Ljava/lang/Object;
.source "Skybox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Skybox$Builder;
    }
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/google/android/filament/Skybox;->mNativeObject:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p2, p0, Lcom/google/android/filament/Skybox;->mNativeObject:J

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 52
    invoke-static {}, Lcom/google/android/filament/Skybox;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JJ)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Skybox;->nBuilderEnvironment(JJ)V

    return-void
.end method

.method static synthetic access$200(JZ)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Skybox;->nBuilderShowSun(JZ)V

    return-void
.end method

.method static synthetic access$300(JF)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Skybox;->nBuilderIntensity(JF)V

    return-void
.end method

.method static synthetic access$400(JFFFF)V
    .locals 0

    .line 52
    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/Skybox;->nBuilderColor(JFFFF)V

    return-void
.end method

.method static synthetic access$500(JJ)J
    .locals 0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Skybox;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(J)V
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lcom/google/android/filament/Skybox;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderColor(JFFFF)V
.end method

.method private static native nBuilderEnvironment(JJ)V
.end method

.method private static native nBuilderIntensity(JF)V
.end method

.method private static native nBuilderShowSun(JZ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetIntensity(J)F
.end method

.method private static native nGetLayerMask(J)I
.end method

.method private static native nSetColor(JFFFF)V
.end method

.method private static native nSetLayerMask(JII)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 251
    iput-wide v0, p0, Lcom/google/android/filament/Skybox;->mNativeObject:J

    return-void
.end method

.method public getIntensity()F
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Skybox;->nGetIntensity(J)F

    move-result v0

    return v0
.end method

.method public getLayerMask()I
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Skybox;->nGetLayerMask(J)I

    move-result v0

    return v0
.end method

.method public getNativeObject()J
    .locals 4

    .line 244
    iget-wide v0, p0, Lcom/google/android/filament/Skybox;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Skybox"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColor(FFFF)V
    .locals 6

    .line 201
    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->getNativeObject()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->nSetColor(JFFFF)V

    return-void
.end method

.method public setColor([F)V
    .locals 6

    .line 211
    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->getNativeObject()J

    move-result-wide v0

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->nSetColor(JFFFF)V

    return-void
.end method

.method public setLayerMask(II)V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/google/android/filament/Skybox;->getNativeObject()J

    move-result-wide v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Skybox;->nSetLayerMask(JII)V

    return-void
.end method
