.class public Lcom/google/android/filament/Skybox$Builder;
.super Ljava/lang/Object;
.source "Skybox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Skybox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Skybox$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/Skybox$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/google/android/filament/Skybox;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    .line 76
    new-instance v0, Lcom/google/android/filament/Skybox$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Skybox$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Skybox$Builder;->mFinalizer:Lcom/google/android/filament/Skybox$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/Skybox;->access$500(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/google/android/filament/Skybox;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/Skybox;-><init>(J)V

    return-object v0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create Skybox"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public color(FFFF)Lcom/google/android/filament/Skybox$Builder;
    .locals 6

    .line 144
    iget-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->access$400(JFFFF)V

    return-object p0
.end method

.method public color([F)Lcom/google/android/filament/Skybox$Builder;
    .locals 6

    .line 158
    iget-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->access$400(JFFFF)V

    return-object p0
.end method

.method public environment(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/Skybox$Builder;
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Skybox;->access$100(JJ)V

    return-object p0
.end method

.method public intensity(F)Lcom/google/android/filament/Skybox$Builder;
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Skybox;->access$300(JF)V

    return-object p0
.end method

.method public showSun(Z)Lcom/google/android/filament/Skybox$Builder;
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/google/android/filament/Skybox$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Skybox;->access$200(JZ)V

    return-object p0
.end method
