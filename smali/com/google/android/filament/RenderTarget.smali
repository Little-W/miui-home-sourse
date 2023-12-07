.class public Lcom/google/android/filament/RenderTarget;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderTarget$Builder;,
        Lcom/google/android/filament/RenderTarget$AttachmentPoint;
    }
.end annotation


# instance fields
.field private mNativeObject:J

.field private final mTextures:[Lcom/google/android/filament/Texture;


# direct methods
.method private constructor <init>(JLcom/google/android/filament/RenderTarget$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/Texture;

    iput-object v0, p0, Lcom/google/android/filament/RenderTarget;->mTextures:[Lcom/google/android/filament/Texture;

    iput-wide p1, p0, Lcom/google/android/filament/RenderTarget;->mNativeObject:J

    iget-object p1, p0, Lcom/google/android/filament/RenderTarget;->mTextures:[Lcom/google/android/filament/Texture;

    invoke-static {p3}, Lcom/google/android/filament/RenderTarget$Builder;->access$000(Lcom/google/android/filament/RenderTarget$Builder;)[Lcom/google/android/filament/Texture;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    aput-object p2, p1, v0

    iget-object p0, p0, Lcom/google/android/filament/RenderTarget;->mTextures:[Lcom/google/android/filament/Texture;

    invoke-static {p3}, Lcom/google/android/filament/RenderTarget$Builder;->access$000(Lcom/google/android/filament/RenderTarget$Builder;)[Lcom/google/android/filament/Texture;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    aput-object p1, p0, p2

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/filament/RenderTarget$Builder;Lcom/google/android/filament/RenderTarget$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;-><init>(JLcom/google/android/filament/RenderTarget$Builder;)V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/RenderTarget;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderTarget;->nBuilderTexture(JIJ)V

    return-void
.end method

.method static synthetic access$300(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderMipLevel(JII)V

    return-void
.end method

.method static synthetic access$400(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderFace(JII)V

    return-void
.end method

.method static synthetic access$500(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderLayer(JII)V

    return-void
.end method

.method static synthetic access$600(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/RenderTarget;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderFace(JII)V
.end method

.method private static native nBuilderLayer(JII)V
.end method

.method private static native nBuilderMipLevel(JII)V
.end method

.method private static native nBuilderTexture(JIJ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetFace(JI)I
.end method

.method private static native nGetLayer(JI)I
.end method

.method private static native nGetMipLevel(JI)I
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/RenderTarget;->mNativeObject:J

    return-void
.end method

.method public getFace(Lcom/google/android/filament/RenderTarget$AttachmentPoint;)Lcom/google/android/filament/Texture$CubemapFace;
    .locals 3

    invoke-static {}, Lcom/google/android/filament/Texture$CubemapFace;->values()[Lcom/google/android/filament/Texture$CubemapFace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->ordinal()I

    move-result p0

    invoke-static {v1, v2, p0}, Lcom/google/android/filament/RenderTarget;->nGetFace(JI)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getLayer(Lcom/google/android/filament/RenderTarget$AttachmentPoint;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/RenderTarget;->nGetLayer(JI)I

    move-result p0

    return p0
.end method

.method public getMipLevel(Lcom/google/android/filament/RenderTarget$AttachmentPoint;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/RenderTarget;->nGetMipLevel(JI)I

    move-result p0

    return p0
.end method

.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed RenderTarget"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTexture(Lcom/google/android/filament/RenderTarget$AttachmentPoint;)Lcom/google/android/filament/Texture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/RenderTarget;->mTextures:[Lcom/google/android/filament/Texture;

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method
