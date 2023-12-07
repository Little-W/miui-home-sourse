.class final Lcom/google/android/gms/internal/measurement/zzjx;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzjx;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzka;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzjx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zziw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkb;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/zzka;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkb;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    return-object p0
.end method
