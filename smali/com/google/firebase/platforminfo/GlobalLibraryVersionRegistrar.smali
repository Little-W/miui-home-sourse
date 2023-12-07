.class public Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;


# instance fields
.field private final infos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/platforminfo/LibraryVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;
    .locals 2

    sget-object v0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    invoke-direct {v0}, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;-><init>()V

    sput-object v0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method getRegisteredVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/platforminfo/LibraryVersion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
