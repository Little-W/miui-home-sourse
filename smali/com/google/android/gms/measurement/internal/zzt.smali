.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

.field private zzd:Ljava/util/BitSet;

.field private zze:Ljava/util/BitSet;

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/util/BitSet;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzi;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/util/BitSet;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzr;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzr;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzt;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zza;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzi;)Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzi()Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/util/BitSet;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzcd$zzb$zza;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzb$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzb$zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzb$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzb$zza;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zzb;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zze()Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object p0, v2

    :goto_3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzi$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    return-object p0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzu;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zza()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmx;->zzb()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzbb:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzc()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmx;->zzb()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzh:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbb:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, p0, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void

    :cond_8
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method
