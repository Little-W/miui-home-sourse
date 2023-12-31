.class public final Lcom/google/android/filament/utils/KtxLoader;
.super Ljava/lang/Object;
.source "KtxLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/KtxLoader$Options;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/filament/utils/KtxLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/android/filament/utils/KtxLoader;

    invoke-direct {v0}, Lcom/google/android/filament/utils/KtxLoader;-><init>()V

    sput-object v0, Lcom/google/android/filament/utils/KtxLoader;->INSTANCE:Lcom/google/android/filament/utils/KtxLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createIndirectLight$default(Lcom/google/android/filament/utils/KtxLoader;Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;ILjava/lang/Object;)Lcom/google/android/filament/IndirectLight;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 59
    new-instance p3, Lcom/google/android/filament/utils/KtxLoader$Options;

    invoke-direct {p3}, Lcom/google/android/filament/utils/KtxLoader$Options;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KtxLoader;->createIndirectLight(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/IndirectLight;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createSkybox$default(Lcom/google/android/filament/utils/KtxLoader;Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;ILjava/lang/Object;)Lcom/google/android/filament/Skybox;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 73
    new-instance p3, Lcom/google/android/filament/utils/KtxLoader$Options;

    invoke-direct {p3}, Lcom/google/android/filament/utils/KtxLoader$Options;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KtxLoader;->createSkybox(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/Skybox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTexture$default(Lcom/google/android/filament/utils/KtxLoader;Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;ILjava/lang/Object;)Lcom/google/android/filament/Texture;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 45
    new-instance p3, Lcom/google/android/filament/utils/KtxLoader$Options;

    invoke-direct {p3}, Lcom/google/android/filament/utils/KtxLoader$Options;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KtxLoader;->createTexture(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/Texture;

    move-result-object p0

    return-object p0
.end method

.method private final native nCreateIndirectLight(JLjava/nio/Buffer;IZ)J
.end method

.method private final native nCreateSkybox(JLjava/nio/Buffer;IZ)J
.end method

.method private final native nCreateTexture(JLjava/nio/Buffer;IZ)J
.end method


# virtual methods
.method public final createIndirectLight(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/IndirectLight;
    .locals 7

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    .line 61
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/android/filament/utils/KtxLoader$Options;->getSrgb()Z

    move-result v6

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/KtxLoader;->nCreateIndirectLight(JLjava/nio/Buffer;IZ)J

    move-result-wide p2

    .line 62
    new-instance p0, Lcom/google/android/filament/IndirectLight;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/IndirectLight;-><init>(Lcom/google/android/filament/Engine;J)V

    return-object p0
.end method

.method public final createSkybox(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/Skybox;
    .locals 7

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    .line 75
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/android/filament/utils/KtxLoader$Options;->getSrgb()Z

    move-result v6

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/KtxLoader;->nCreateSkybox(JLjava/nio/Buffer;IZ)J

    move-result-wide p2

    .line 76
    new-instance p0, Lcom/google/android/filament/Skybox;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/Skybox;-><init>(Lcom/google/android/filament/Engine;J)V

    return-object p0
.end method

.method public final createTexture(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KtxLoader$Options;)Lcom/google/android/filament/Texture;
    .locals 7

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    .line 47
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/android/filament/utils/KtxLoader$Options;->getSrgb()Z

    move-result v6

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/KtxLoader;->nCreateTexture(JLjava/nio/Buffer;IZ)J

    move-result-wide p2

    .line 48
    new-instance p0, Lcom/google/android/filament/Texture;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/Texture;-><init>(Lcom/google/android/filament/Engine;J)V

    return-object p0
.end method
