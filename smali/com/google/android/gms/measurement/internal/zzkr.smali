.class public final Lcom/google/android/gms/measurement/internal/zzkr;
.super Lcom/google/android/gms/measurement/internal/zzki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzji;[B)Lcom/google/android/gms/internal/measurement/zzji;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lcom/google/android/gms/internal/measurement/zzji;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zzb()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzji;->zza([BLcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzji;->zza([B)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "Dynamic "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Sequence "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Session-Scoped "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    move-wide v6, v5

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_1

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v5

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static zza([Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_1

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    :cond_1
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    :cond_2
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_0

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    :goto_2
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzd()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    :cond_4
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_5

    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    :cond_5
    :goto_2
    if-ltz v1, :cond_6

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbv$zzc;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "param_name"

    invoke-static {p1, p2, v0, p0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zza()Z

    move-result p0

    const-string/jumbo v0, "}\n"

    if-eqz p0, :cond_8

    add-int/lit8 p0, p2, 0x1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzf;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "string_filter"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zza()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "match_type"

    invoke-static {p1, p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzc()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "expression"

    invoke-static {p1, p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zze()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzf()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "case_sensitive"

    invoke-static {p1, p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzh()I

    move-result v2

    if-lez v2, :cond_7

    add-int/lit8 v2, p0, 0x1

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "expression_list {\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, p0, 0x2

    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc()Z

    move-result p0

    if-eqz p0, :cond_9

    add-int/lit8 p0, p2, 0x1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    move-result-object p3

    const-string v1, "number_filter"

    invoke-static {p1, p0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbv$zzd;)V

    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbv$zzd;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zza()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzd()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zze()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzf()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_value"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzg()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzh()Ljava/lang/String;

    move-result-object p2

    const-string v0, "min_comparison_value"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzj()Ljava/lang/String;

    move-result-object p2

    const-string p3, "max_comparison_value"

    invoke-static {p0, p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p1, "}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/lang/String;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzd()I

    move-result p2

    const/16 p4, 0xa

    const/4 v0, 0x4

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzc()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzb()I

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zza()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzf()I

    move-result p2

    const/4 p4, 0x0

    const-string/jumbo v3, "}\n"

    if-eqz p2, :cond_b

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zze()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzb;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zza()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, p4

    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zzc()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zzd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, p4

    :goto_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzh()I

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzg()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    add-int/lit8 v4, p3, 0x1

    if-eqz p3, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zza()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_6

    :cond_d
    move-object p3, p4

    :goto_6
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zzc()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v0, v2

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v0, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v7

    goto :goto_7

    :cond_f
    const-string p3, "]"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v4

    goto :goto_5

    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v3, "name"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string v3, "string_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const-string v3, "int_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_5
    const-string v1, "double_value"

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzl()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    :cond_6
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zza(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzl()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic f_()Lcom/google/android/gms/measurement/internal/zzkr;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object p0

    return-object p0
.end method

.method final zza([B)J
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkv;->zzh()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Failed to get MD5"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza([B)J

    move-result-wide p0

    return-wide p0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Failed to load parcelable from buffer"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/internal/measurement/zzcd$zzc;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    return-object p0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbv$zzb;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzh()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzk()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzf()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzg()Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    move-result-object v1

    const-string v3, "event_count_filter"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbv$zzd;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zze()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbv$zzc;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p0, "}\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbv$zze;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zze()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzf()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzh()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzd()Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbv$zzc;)V

    const-string/jumbo p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;)Ljava/lang/String;
    .locals 12

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "}\n"

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "bundle {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zza()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "protocol_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "platform"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzz()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaa()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "gmp_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzab()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "uploading_gmp_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbc()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dynamite_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzau()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzav()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "config_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzam()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gmp_app_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbb()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admob_app_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzar()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzas()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_major"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firebase_instance_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzah()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzai()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dev_cert_hash"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzw()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_store"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzg()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "upload_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzi()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzj()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "start_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzk()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "end_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzm()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_start_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzo()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_end_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_instance_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resettable_device_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzay()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ds_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzae()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaf()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "limited_ad_tracking"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "os_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzs()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_model"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user_default_language"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzu()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "time_zone_offset_minutes"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaj()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzak()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bundle_sequential_index"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzan()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzao()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "service_upload"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzal()Ljava/lang/String;

    move-result-object v4

    const-string v5, "health_monitor"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzbx:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaw()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzax()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzax()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaz()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzba()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "retry_counter"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbf()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_signals"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zze()Ljava/util/List;

    move-result-object v4

    const-string v5, "name"

    const/4 v6, 0x2

    if-eqz v4, :cond_19

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    if-eqz v7, :cond_15

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v8, "user_property {\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zza()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzb()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_16
    move-object v8, v9

    :goto_2
    const-string v10, "set_timestamp_millis"

    invoke-static {v0, v6, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v5, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zze()Ljava/lang/String;

    move-result-object v8

    const-string v10, "string_value"

    invoke-static {v0, v6, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzg()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_3

    :cond_17
    move-object v8, v9

    :goto_3
    const-string v10, "int_value"

    invoke-static {v0, v6, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzh()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzi()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_18
    const-string v7, "double_value"

    invoke-static {v0, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzap()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_1e

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    if-eqz v8, :cond_1a

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v9, "audience_membership {\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zza()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzb()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "audience_id"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzf()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzg()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "new_audience"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    move-result-object v9

    const-string v10, "current_data"

    invoke-static {v0, v6, v10, v9, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzd()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zze()Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    move-result-object v8

    const-string v9, "previous_data"

    invoke-static {v0, v6, v9, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/lang/String;)V

    :cond_1d
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzc()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    if-eqz v4, :cond_1f

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "event {\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string/jumbo v8, "timestamp_millis"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzf()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzg()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzh()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzb()I

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    :cond_23
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_24
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    move v6, p1

    move p1, p0

    move p0, v6

    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_3

    add-int/lit8 p1, p0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zza()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zza()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zze()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    :cond_2
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_3

    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Ignoring invalid (type) event param value"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb()V

    return-void
.end method

.method final zzb([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Failed to ungzip content"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()V

    return-void
.end method

.method final zzc([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Failed to gzip content"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method protected final zzd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final zze()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzao:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzjr;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzf()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzj()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object p0

    return-object p0
.end method
