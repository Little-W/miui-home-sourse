.class public Lcom/google/android/filament/EntityManager;
.super Ljava/lang/Object;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/EntityManager$Holder;
    }
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/android/filament/EntityManager;->nGetEntityManager()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/filament/EntityManager$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/filament/EntityManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/android/filament/EntityManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/filament/EntityManager$Holder;->INSTANCE:Lcom/google/android/filament/EntityManager;

    return-object v0
.end method

.method private static native nCreate(J)I
.end method

.method private static native nCreateArray(JI[I)V
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nDestroyArray(JI[I)V
.end method

.method private static native nGetEntityManager()J
.end method

.method private static native nIsAlive(JI)Z
.end method


# virtual methods
.method public create()I
    .locals 2
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 41
    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/EntityManager;->nCreate(J)I

    move-result v0

    return v0
.end method

.method public create(I)[I
    .locals 3
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 52
    new-array v0, p1, [I

    .line 53
    iget-wide v1, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/filament/EntityManager;->nCreateArray(JI[I)V

    return-object v0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "n must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create([I)[I
    .locals 3
    .param p1    # [I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 59
    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    array-length v2, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/EntityManager;->nCreateArray(JI[I)V

    return-object p1
.end method

.method public destroy(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 45
    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/EntityManager;->nDestroy(JI)V

    return-void
.end method

.method public destroy([I)V
    .locals 3
    .param p1    # [I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 64
    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    array-length v2, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/EntityManager;->nDestroyArray(JI[I)V

    return-void
.end method

.method public getNativeObject()J
    .locals 2
    .annotation build Lcom/google/android/filament/proguard/UsedByReflection;
        value = "AssetLoader.java"
    .end annotation

    .line 73
    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    return-wide v0
.end method

.method public isAlive(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 68
    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/EntityManager;->nIsAlive(JI)Z

    move-result p1

    return p1
.end method
