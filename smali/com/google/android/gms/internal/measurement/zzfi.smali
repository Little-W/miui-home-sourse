.class public final Lcom/google/android/gms/internal/measurement/zzfi;
.super Lcom/google/android/gms/internal/measurement/zzfh;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfh<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzfj;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfj<",
            "TK;TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew;->zza:Lcom/google/android/gms/internal/measurement/zzew;

    return-object v0

    .line 8
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzff;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzff;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 15
    instance-of v8, v4, Lcom/google/android/gms/internal/measurement/zzfg;

    if-eqz v8, :cond_1

    instance-of v8, v4, Ljava/util/SortedSet;

    if-nez v8, :cond_1

    .line 16
    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfg;

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzey;->zzf()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_5

    .line 19
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 20
    array-length v8, v4

    :goto_1
    if-eqz v8, :cond_9

    if-eq v8, v6, :cond_8

    .line 28
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(I)I

    move-result v9

    .line 29
    new-array v13, v9, [Ljava/lang/Object;

    add-int/lit8 v14, v9, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v10, v8, :cond_4

    .line 34
    aget-object v11, v4, v10

    invoke-static {v11, v10}, Lcom/google/android/gms/internal/measurement/zzfn;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 35
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v16

    .line 36
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v17

    :goto_3
    and-int v18, v17, v14

    .line 38
    aget-object v2, v13, v18

    if-nez v2, :cond_2

    add-int/lit8 v2, v15, 0x1

    .line 40
    aput-object v11, v4, v15

    .line 41
    aput-object v11, v13, v18

    add-int v12, v12, v16

    move v15, v2

    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {v4, v15, v8, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v15, v6, :cond_5

    const/4 v2, 0x0

    .line 49
    aget-object v4, v4, v2

    .line 50
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-direct {v8, v4, v12}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>(Ljava/lang/Object;I)V

    goto :goto_5

    .line 51
    :cond_5
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(I)I

    move-result v2

    div-int/lit8 v9, v9, 0x2

    if-ge v2, v9, :cond_6

    move v8, v15

    goto :goto_1

    .line 53
    :cond_6
    array-length v2, v4

    shr-int/lit8 v5, v2, 0x1

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    if-ge v15, v5, :cond_7

    .line 55
    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    :cond_7
    move-object v11, v4

    .line 56
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfs;

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    move-object v8, v2

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 24
    aget-object v4, v4, v2

    .line 26
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    .line 22
    :cond_9
    sget-object v8, Lcom/google/android/gms/internal/measurement/zzfs;->zza:Lcom/google/android/gms/internal/measurement/zzfs;

    .line 58
    :goto_5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 60
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzb:I

    add-int/2addr v2, v6

    shl-int/2addr v2, v6

    .line 61
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    array-length v4, v4

    if-le v2, v4, :cond_d

    .line 62
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    array-length v5, v5

    if-ltz v2, :cond_c

    shr-int/lit8 v9, v5, 0x1

    add-int/2addr v5, v9

    add-int/2addr v5, v6

    if-ge v5, v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    shl-int/lit8 v5, v2, 0x1

    :cond_a
    if-gez v5, :cond_b

    const v5, 0x7fffffff

    .line 72
    :cond_b
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    iput-boolean v2, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzc:Z

    goto :goto_6

    .line 65
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_d
    const/4 v2, 0x0

    .line 74
    :goto_6
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    iget v5, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzb:I

    mul-int/lit8 v5, v5, 0x2

    aput-object v7, v4, v5

    .line 76
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    iget v5, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzb:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    aput-object v8, v4, v5

    .line 77
    iget v4, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzb:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzb:I

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 80
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 82
    iput-boolean v6, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzc:Z

    .line 83
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzff;->zzb:I

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzff;->zza:[Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    .line 84
    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>(Lcom/google/android/gms/internal/measurement/zzfc;ILjava/util/Comparator;)V

    return-object v0
.end method
