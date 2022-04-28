.class public final Lcom/google/android/gms/measurement/internal/zzkr;
.super Lcom/google/android/gms/measurement/internal/zzki;
.source "com.google.android.gms:play-services-measurement@@18.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    .line 1
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

    .line 539
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 540
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

    .line 26
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

    .line 27
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

    .line 533
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zzb()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzji;->zza([BLcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    return-object p0

    .line 536
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzji;->zza([B)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .locals 1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "Dynamic "

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Sequence "

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Session-Scoped "

    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
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

    .line 444
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 445
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

    .line 449
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 450
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 453
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

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 547
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v4

    .line 548
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

    .line 549
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v7

    .line 550
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 551
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_1

    .line 552
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    .line 553
    :cond_1
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 554
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    .line 555
    :cond_2
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_0

    .line 556
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    .line 557
    :goto_2
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_1

    .line 559
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzd()I

    move-result v3

    if-lez v3, :cond_4

    .line 560
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

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 70
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

    .line 74
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p1

    .line 75
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 76
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    .line 77
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    .line 79
    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 80
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    goto :goto_2

    .line 81
    :cond_4
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 82
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    :cond_5
    :goto_2
    if-ltz v1, :cond_6

    .line 84
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void

    .line 85
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

    .line 407
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

    .line 370
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "complement"

    .line 373
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 374
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "param_name"

    .line 376
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 378
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zza()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, p2, 0x1

    const-string v1, "string_filter"

    .line 379
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzf;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 381
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    .line 382
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zza()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "match_type"

    .line 385
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 386
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzc()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "expression"

    .line 387
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 388
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zze()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "case_sensitive"

    .line 389
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzf()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzh()I

    move-result v1

    if-lez v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    .line 391
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "expression_list {\n"

    .line 392
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzg()Ljava/util/List;

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

    add-int/lit8 v3, v0, 0x2

    .line 394
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    .line 395
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 396
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string v1, "}\n"

    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_7
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p2, 0x1

    const-string v1, "number_filter"

    .line 402
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    move-result-object p3

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbv$zzd;)V

    .line 403
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbv$zzd;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    .line 353
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 354
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zza()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "comparison_type"

    .line 356
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 357
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "match_as_float"

    .line 358
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zze()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "comparison_value"

    .line 360
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzg()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "min_comparison_value"

    .line 362
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 363
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "max_comparison_value"

    .line 364
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzj()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 365
    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 366
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/lang/String;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 295
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    .line 296
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 297
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzd()I

    move-result p2

    const/16 p4, 0xa

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 299
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 300
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzc()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    add-int/lit8 v4, v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, ", "

    .line 304
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzb()I

    move-result p2

    if-eqz p2, :cond_6

    .line 309
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 310
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zza()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    add-int/lit8 v4, v2, 0x1

    if-eqz v2, :cond_4

    const-string v2, ", "

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    .line 317
    :cond_5
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzf()I

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_b

    .line 319
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    .line 320
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zze()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v1

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zzb;

    add-int/lit8 v4, v2, 0x1

    if-eqz v2, :cond_7

    const-string v2, ", "

    .line 324
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zza()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zzb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, p4

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 326
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zzc()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzb;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    :cond_9
    move-object v2, p4

    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_2

    :cond_a
    const-string p2, "}\n"

    .line 329
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_b
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzh()I

    move-result p2

    if-eqz p2, :cond_11

    .line 331
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    .line 332
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzg()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    add-int/lit8 v2, p3, 0x1

    if-eqz p3, :cond_c

    const-string p3, ", "

    .line 336
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
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

    .line 339
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zzc()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v0, v1

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v0, 0x1

    if-eqz v0, :cond_e

    const-string v0, ", "

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_e
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v5

    goto :goto_7

    :cond_f
    const-string p3, "]"

    .line 344
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v2

    goto :goto_5

    :cond_10
    const-string p2, "}\n"

    .line 346
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_11
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 412
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    .line 413
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .locals 6
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

    .line 272
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

    .line 274
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name"

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 278
    :goto_1
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "string_value"

    .line 280
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 281
    :goto_2
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "int_value"

    .line 282
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "double_value"

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 285
    :cond_5
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzl()I

    move-result v1

    if-lez v1, :cond_6

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 288
    :cond_6
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)Z
    .locals 0

    .line 432
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
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

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
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

    .line 441
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 442
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

    .line 31
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzl()I

    move-result p1

    if-lez p1, :cond_9

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk()Ljava/util/List;

    move-result-object p0

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
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

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
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

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 50
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
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
    .locals 1

    .line 564
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v0

    return-object v0
.end method

.method final zza([B)J
    .locals 2

    .line 478
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 480
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkv;->zzh()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 484
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 485
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza([B)J

    move-result-wide v0

    return-wide v0
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

    .line 420
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 421
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 422
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 423
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 427
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 430
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/internal/measurement/zzcd$zzc;
    .locals 5

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v0

    .line 60
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

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v3

    .line 62
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbv$zzb;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "filter_id"

    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "event_name"

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzh()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzk()Z

    move-result v4

    .line 229
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    .line 231
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzf()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "event_count_filter"

    .line 233
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzg()Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbv$zzd;)V

    .line 234
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zze()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "  filters {\n"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
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

    .line 237
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbv$zzc;)V

    goto :goto_0

    .line 239
    :cond_4
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbv$zze;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "filter_id"

    .line 247
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "property_name"

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zze()Z

    move-result v1

    .line 253
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzf()Z

    move-result v3

    .line 254
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzh()Z

    move-result v4

    .line 255
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    .line 257
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    .line 258
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzd()Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbv$zzc;)V

    const-string p1, "}\n"

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;)Ljava/lang/String;
    .locals 11

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 94
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "bundle {\n"

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zza()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "protocol_version"

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v3, "platform"

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzz()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "gmp_version"

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaa()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzab()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "uploading_gmp_version"

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbc()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "dynamite_version"

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzau()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "config_version"

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzav()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v3, "gmp_app_id"

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzam()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "admob_app_id"

    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "app_id"

    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "app_version"

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzar()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "app_version_major"

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzas()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    const-string v3, "firebase_instance_id"

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzah()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "dev_cert_hash"

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzai()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string v3, "app_store"

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzg()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "upload_timestamp_millis"

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzi()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "start_timestamp_millis"

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzj()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzk()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "end_timestamp_millis"

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzm()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "previous_bundle_start_timestamp_millis"

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 126
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzo()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "previous_bundle_end_timestamp_millis"

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 130
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "app_instance_id"

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "resettable_device_id"

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "device_id"

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "ds_id"

    .line 134
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzae()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "limited_ad_tracking"

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaf()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_e
    const-string v3, "os_version"

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "device_model"

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzs()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "user_default_language"

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzu()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "time_zone_offset_minutes"

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaj()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "bundle_sequential_index"

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzak()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzan()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "service_upload"

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzao()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_11
    const-string v3, "health_monitor"

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbx:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaw()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzax()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_12

    const-string v3, "android_id"

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzax()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzaz()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "retry_counter"

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzba()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbf()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "consent_signals"

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zze()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_19

    .line 157
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    if-eqz v5, :cond_15

    .line 159
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "user_property {\n"

    .line 160
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "set_timestamp_millis"

    .line 162
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zza()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_16

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzb()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :cond_16
    move-object v7, v8

    .line 163
    :goto_2
    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v6, "name"

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v6, "string_value"

    .line 167
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v6, "int_value"

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzg()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_3

    :cond_17
    move-object v7, v8

    :goto_3
    invoke-static {v0, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v6, "double_value"

    .line 170
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzh()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzi()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 171
    :cond_18
    invoke-static {v0, v4, v6, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "}\n"

    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 176
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzap()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1e

    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    if-eqz v6, :cond_1a

    .line 182
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "audience_membership {\n"

    .line 183
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zza()Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "audience_id"

    .line 185
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzb()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_1b
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzf()Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v7, "new_audience"

    .line 187
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzg()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v0, v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    const-string v7, "current_data"

    .line 188
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    move-result-object v8

    invoke-static {v0, v4, v7, v8, v5}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzd()Z

    move-result v7

    if-eqz v7, :cond_1d

    const-string v7, "previous_data"

    .line 190
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zze()Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    move-result-object v6

    invoke-static {v0, v4, v7, v6, v5}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzi;Ljava/lang/String;)V

    .line 191
    :cond_1d
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "}\n"

    .line 192
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 194
    :cond_1e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzc()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 197
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    if-eqz v3, :cond_1f

    .line 199
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "event {\n"

    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "name"

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "timestamp_millis"

    .line 203
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzf()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "previous_timestamp_millis"

    .line 205
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzg()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 206
    :cond_21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzh()Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "count"

    .line 207
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 208
    :cond_22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzb()I

    move-result v5

    if-eqz v5, :cond_23

    .line 209
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 210
    :cond_23
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 213
    :cond_24
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_25
    const-string p1, "}\n"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 458
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 462
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Ignoring bit index greater than bitSet size"

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 467
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

    .line 469
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    move v6, p2

    move p2, p1

    move p1, v6

    :goto_1
    if-ltz p1, :cond_3

    .line 471
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    add-int/lit8 p2, p1, -0x1

    move v6, p2

    move p2, p1

    move p1, v6

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 474
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .locals 0

    .line 568
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zza()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;Ljava/lang/Object;)V
    .locals 2

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zze()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    .line 16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    .line 18
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 19
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    .line 20
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 21
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    .line 22
    :cond_2
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 23
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-void

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    .line 6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-void

    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-void

    .line 10
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    .line 569
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

    .line 486
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 487
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 488
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 489
    new-array v2, v2, [B

    .line 490
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 492
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 495
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 496
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 498
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    throw p1
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    .line 570
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

    .line 500
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 501
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 502
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 503
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 504
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 505
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    throw p1
.end method

.method protected final zzd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 509
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 510
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 512
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 513
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzao:Lcom/google/android/gms/measurement/internal/zzej;

    .line 514
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 515
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 516
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

    .line 517
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 520
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 524
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

    .line 528
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzjr;
    .locals 1

    .line 563
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzf()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 1

    .line 565
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1

    .line 566
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 567
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzj()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 1

    .line 571
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 572
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 1

    .line 573
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 1

    .line 574
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 1

    .line 575
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 576
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 577
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 1

    .line 578
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    .line 579
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 1

    .line 580
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method
