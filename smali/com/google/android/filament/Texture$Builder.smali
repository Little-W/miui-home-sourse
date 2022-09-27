.class public Lcom/google/android/filament/Texture$Builder;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    invoke-static {}, Lcom/google/android/filament/Texture;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    .line 657
    new-instance v0, Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Texture$Builder;->mFinalizer:Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;
    .locals 4

    .line 788
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Texture;->access$1000(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 790
    new-instance p1, Lcom/google/android/filament/Texture;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/Texture;-><init>(J)V

    return-object p1

    .line 789
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Texture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public depth(I)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 693
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$300(JI)V

    return-object p0
.end method

.method public format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 729
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture$InternalFormat;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$600(JI)V

    return-object p0
.end method

.method public height(I)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 678
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$200(JI)V

    return-object p0
.end method

.method public importTexture(J)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 775
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Texture;->access$900(JJ)V

    return-object p0
.end method

.method public levels(I)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 704
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$400(JI)V

    return-object p0
.end method

.method public sampler(Lcom/google/android/filament/Texture$Sampler;)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 715
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture$Sampler;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$500(JI)V

    return-object p0
.end method

.method public swizzle(Lcom/google/android/filament/Texture$Swizzle;Lcom/google/android/filament/Texture$Swizzle;Lcom/google/android/filament/Texture$Swizzle;Lcom/google/android/filament/Texture$Swizzle;)Lcom/google/android/filament/Texture$Builder;
    .locals 6

    .line 755
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture$Swizzle;->ordinal()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/Texture$Swizzle;->ordinal()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/android/filament/Texture$Swizzle;->ordinal()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/filament/Texture$Swizzle;->ordinal()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Texture;->access$800(JIIII)V

    return-object p0
.end method

.method public usage(I)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 740
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$700(JI)V

    return-object p0
.end method

.method public width(I)Lcom/google/android/filament/Texture$Builder;
    .locals 2

    .line 667
    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->access$100(JI)V

    return-object p0
.end method
