.class public final Lcom/google/android/gms/measurement/internal/zzkv;
.super Lcom/google/android/gms/measurement/internal/zzgq;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;


# instance fields
.field private zzc:Ljava/security/SecureRandom;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicLong;

.field private zze:I

.field private zzf:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "firebase_"

    const-string v1, "google_"

    const-string v2, "ga_"

    .line 903
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzkv;->zza:[Ljava/lang/String;

    const-string v0, "_err"

    .line 904
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/Integer;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 330
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_8

    if-eqz p8, :cond_7

    .line 332
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgu;->zzc:[Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x14

    return v0

    .line 334
    :cond_0
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzir;->zzah()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x19

    return v0

    :cond_1
    const-string v2, "param"

    .line 339
    instance-of v3, v0, [Landroid/os/Parcelable;

    const/16 v4, 0xc8

    if-eqz v3, :cond_2

    .line 340
    move-object v5, v0

    check-cast v5, [Landroid/os/Parcelable;

    array-length v5, v5

    goto :goto_0

    .line 341
    :cond_2
    instance-of v5, v0, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 342
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    if-le v5, v4, :cond_3

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    .line 346
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v11, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 348
    invoke-virtual {v6, v11, v2, v8, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v9

    goto :goto_1

    :cond_3
    move v2, v10

    goto :goto_1

    :cond_4
    move v2, v10

    :goto_1
    if-nez v2, :cond_8

    const/16 v2, 0x11

    if-eqz v3, :cond_5

    .line 357
    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;

    array-length v5, v3

    if-le v5, v4, :cond_6

    .line 358
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    .line 359
    :cond_5
    instance-of v3, v0, Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 360
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_6

    .line 362
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3, v9, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    :goto_2
    move v11, v2

    goto :goto_3

    :cond_7
    const/16 v0, 0x15

    return v0

    :cond_8
    move v11, v9

    .line 365
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzaq:Lcom/google/android/gms/measurement/internal/zzej;

    move-object/from16 v12, p1

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 366
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 367
    :cond_9
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/16 v1, 0x100

    goto :goto_4

    :cond_b
    const/16 v1, 0x64

    :goto_4
    const-string v2, "param"

    .line 370
    invoke-virtual {v7, v2, v8, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v11

    :cond_c
    if-eqz p8, :cond_13

    .line 374
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 375
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    goto/16 :goto_8

    .line 377
    :cond_d
    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 378
    move-object v13, v0

    check-cast v13, [Landroid/os/Parcelable;

    .line 379
    array-length v14, v13

    move v15, v9

    :goto_5
    if-ge v15, v14, :cond_12

    aget-object v0, v13, v15

    .line 380
    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_e

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 383
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 384
    invoke-virtual {v1, v2, v0, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 386
    :cond_e
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 389
    :cond_f
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 390
    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v0, v9

    :goto_6
    if-ge v0, v14, :cond_12

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v15, v0, 0x1

    .line 392
    instance-of v0, v1, Landroid/os/Bundle;

    if-nez v0, :cond_10

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 395
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 396
    invoke-virtual {v0, v2, v1, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 398
    :cond_10
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    move v0, v15

    goto :goto_6

    :cond_11
    :goto_7
    move v10, v9

    :cond_12
    :goto_8
    if-eqz v10, :cond_13

    return v11

    :cond_13
    const/4 v0, 0x4

    return v0
.end method

.method public static zza(JJ)J
    .locals 2

    const-wide/32 v0, 0xea60

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 747
    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzap;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 885
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 886
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-eqz v4, :cond_1

    .line 887
    check-cast v3, [Landroid/os/Parcelable;

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method static zza([B)J
    .locals 9

    .line 579
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-wide/16 v3, 0x0

    .line 583
    array-length v0, p0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_1

    .line 584
    array-length v1, p0

    add-int/lit8 v1, v1, -0x8

    if-lt v0, v1, :cond_1

    .line 585
    aget-byte v1, p0, v0

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-wide v3
.end method

.method public static zza(Ljava/util/List;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzku;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 796
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzku;

    .line 797
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 798
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 800
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 801
    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 802
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 296
    :cond_0
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_e

    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 298
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 299
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 300
    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 301
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 302
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 303
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 304
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 305
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 306
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 307
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 308
    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_c

    .line 311
    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_9

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_c

    .line 312
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_b

    aget-object v0, p2, p4

    .line 314
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 315
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 316
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 317
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 319
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0

    .line 309
    :cond_d
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_3
    return-object p2
.end method

.method public static zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p1, :cond_2

    if-eqz p2, :cond_1

    .line 325
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 498
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/os/Bundle;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x28

    const/4 p3, 0x1

    .line 500
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_ev"

    .line 501
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 504
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 505
    instance-of p1, p4, Ljava/lang/String;

    if-nez p1, :cond_0

    instance-of p1, p4, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    .line 506
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_el"

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long p3, p1

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    if-nez v11, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 216
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 218
    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 220
    invoke-direct {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zzg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 222
    invoke-direct {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zzh(Ljava/lang/String;)I

    move-result v0

    :cond_5
    :goto_3
    if-eqz v0, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    move-object v1, v8

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 226
    :goto_4
    invoke-static {v11, v0, v8, v8, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_7
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v7, p3

    .line 232
    invoke-virtual {v0, v1, v10, v7, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x16

    move-object v14, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p3

    .line 235
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v14, v8

    move/from16 v8, v16

    .line 236
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    :goto_5
    if-eqz v0, :cond_9

    const-string v1, "_ev"

    .line 238
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 239
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v0, v14, v14, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_9
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgu;->zzd:[Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v15, v15, 0x1

    if-lez v15, :cond_1

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Item cannot contain custom parameters"

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x17

    .line 250
    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/os/Bundle;I)Z

    .line 251
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method static zza(Landroid/content/Context;Z)Z
    .locals 1

    .line 589
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 591
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    .line 592
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static zza(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.google.com"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android-app://com.google.appcrawler"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Landroid/os/Bundle;I)Z
    .locals 4

    .line 202
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return v1

    .line 204
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/2addr v1, v3

    if-le v1, p1, :cond_1

    .line 209
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v3
.end method

.method static zza(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 618
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static zza(Ljava/lang/Object;)Z
    .locals 1

    .line 187
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/lang/String;)Z
    .locals 3

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 284
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3

    .line 285
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 287
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    .line 289
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v2

    .line 290
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v2
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 730
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 732
    invoke-static {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static zza(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 623
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static zza(Landroid/os/Parcelable;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 700
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 701
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw p0
.end method

.method public static zzb(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    if-nez p0, :cond_0

    .line 708
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 709
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 710
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 711
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 712
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 713
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 714
    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 715
    :cond_2
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 716
    check-cast v2, [Landroid/os/Parcelable;

    .line 717
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_1

    .line 718
    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 719
    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 721
    :cond_4
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 722
    check-cast v2, Ljava/util/List;

    .line 723
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 724
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 725
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 726
    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static zzb(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzz;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 813
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 814
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 815
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzz;

    .line 816
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "app_id"

    .line 817
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "origin"

    .line 818
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "creation_timestamp"

    .line 819
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "name"

    .line 820
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string v3, "active"

    .line 822
    iget-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 823
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, "trigger_event_name"

    .line 824
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v3, :cond_2

    const-string v3, "timed_out_event_name"

    .line 826
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz v3, :cond_2

    const-string v3, "timed_out_event_params"

    .line 828
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    .line 829
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v4

    .line 830
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v3, "trigger_timeout"

    .line 831
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzh:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 832
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v3, :cond_3

    const-string v3, "triggered_event_name"

    .line 833
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz v3, :cond_3

    const-string v3, "triggered_event_params"

    .line 835
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    .line 836
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v4

    .line 837
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const-string v3, "triggered_timestamp"

    .line 838
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "time_to_live"

    .line 839
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzj:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 840
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v3, :cond_4

    const-string v3, "expired_event_name"

    .line 841
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz v3, :cond_4

    const-string v3, "expired_event_params"

    .line 843
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    .line 844
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v1

    .line 845
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 846
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 596
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 597
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private static zzb(Landroid/os/Bundle;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "_err"

    .line 511
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v0, "_err"

    int-to-long v1, p1

    .line 513
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static zzb(Ljava/lang/Object;)[Landroid/os/Bundle;
    .locals 2

    .line 415
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 416
    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    return-object v0

    .line 417
    :cond_0
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 418
    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 419
    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 420
    check-cast p0, Ljava/util/ArrayList;

    .line 421
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 681
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 683
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    const/16 v1, 0x40

    .line 684
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 685
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_0

    .line 686
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    .line 687
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 688
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 689
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 690
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 696
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 693
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 613
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static zzd(Ljava/lang/String;)Z
    .locals 1

    .line 608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzf(Ljava/lang/String;)Z
    .locals 5

    .line 736
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkv;->zzb:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 737
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzg(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event param"

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "event param"

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    const-string v0, "event param"

    const/16 v2, 0x28

    .line 177
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final zzh(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event param"

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "event param"

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    const-string v0, "event param"

    const/16 v2, 0x28

    .line 184
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static zzh()Ljava/security/MessageDigest;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :try_start_0
    const-string v1, "MD5"

    .line 572
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzi(Ljava/lang/String;)Z
    .locals 1

    .line 291
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final zzj(Ljava/lang/String;)I
    .locals 2

    const-string v0, "_ldl"

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x800

    return p1

    :cond_0
    const-string v0, "_id"

    .line 518
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x100

    return p1

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_lgclid"

    .line 521
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    return p1

    :cond_2
    const/16 p1, 0x24

    return p1
.end method


# virtual methods
.method protected final g_()V
    .locals 6

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 7
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final zza(I)I
    .locals 2

    .line 744
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p1

    .line 745
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method final zza(Ljava/lang/String;Z)I
    .locals 4

    const-string v0, "event"

    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xd

    if-eqz p2, :cond_1

    const-string p2, "event"

    .line 159
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgv;->zza:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgv;->zzb:[Ljava/lang/String;

    invoke-virtual {p0, p2, v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_1
    const-string p2, "event"

    .line 161
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgv;->zza:[Ljava/lang/String;

    invoke-virtual {p0, p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    const-string p2, "event"

    const/16 v0, 0x28

    .line 163
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method final zza(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    .line 657
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 658
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 662
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkv;->zzh()Ljava/security/MessageDigest;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 667
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 669
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 671
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_1

    .line 672
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 673
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza([B)J

    move-result-wide v2

    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 679
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-wide v2, v4

    :goto_0
    return-wide v2
.end method

.method final zza(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "utm_campaign"

    .line 38
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utm_source"

    .line 39
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utm_medium"

    .line 40
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gclid"

    .line 41
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 46
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 50
    :cond_3
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "campaign"

    .line 52
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "source"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "medium"

    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "gclid"

    .line 58
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "utm_term"

    .line 59
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "term"

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "utm_content"

    .line 62
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v1, "aclid"

    .line 65
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "aclid"

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "cp1"

    .line 68
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "cp1"

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v1, "anid"

    .line 71
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "anid"

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final zza(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 630
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 631
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    .line 634
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Param value can\'t be null"

    .line 635
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 423
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgv;->zzd:[Ljava/lang/String;

    .line 424
    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v11, :cond_c

    .line 427
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzd()I

    move-result v8

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzay:Lcom/google/android/gms/measurement/internal/zzej;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 433
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 435
    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v0, v17

    goto :goto_4

    :cond_2
    :goto_2
    if-eqz p5, :cond_3

    .line 437
    invoke-direct {v9, v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zzg(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_3
    move/from16 v0, v17

    :goto_3
    if-nez v0, :cond_4

    .line 439
    invoke-direct {v9, v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zzh(Ljava/lang/String;)I

    move-result v0

    :cond_4
    :goto_4
    if-eqz v0, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    move-object v1, v6

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 443
    :goto_5
    invoke-static {v15, v0, v6, v6, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v15, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v9, v8

    goto :goto_7

    .line 447
    :cond_6
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move-object v5, v15

    move-object v14, v6

    move-object/from16 v6, p4

    move/from16 v7, p5

    move v9, v8

    move v8, v13

    .line 448
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_7

    .line 450
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v15, v0, v14, v14, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_7
    if-eqz v0, :cond_9

    const-string v1, "_ev"

    .line 452
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x15

    if-ne v0, v1, :cond_8

    move-object v1, v10

    goto :goto_6

    :cond_8
    move-object v1, v14

    .line 457
    :goto_6
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 458
    invoke-static {v15, v0, v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_7
    move-object/from16 v7, p1

    move v8, v9

    move-object/from16 v9, p0

    goto :goto_1

    .line 461
    :cond_9
    :goto_8
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v18, 0x1

    if-le v0, v9, :cond_a

    const/16 v1, 0x30

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Event can\'t contain more than "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " params"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 470
    invoke-static {v15, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/os/Bundle;I)Z

    .line 471
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v7, p1

    move/from16 v18, v0

    move v8, v9

    move-object/from16 v9, p0

    goto/16 :goto_1

    :cond_a
    move/from16 v18, v0

    :cond_b
    move-object/from16 v7, p1

    move v8, v9

    move-object/from16 v9, p0

    goto/16 :goto_1

    :cond_c
    const/4 v15, 0x0

    :cond_d
    return-object v15
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;
    .locals 10

    move-object v7, p0

    move-object v8, p2

    move-object v0, p3

    .line 640
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move/from16 v1, p9

    .line 642
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    .line 649
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    :goto_0
    const-string v0, "_o"

    move-object v9, p4

    .line 650
    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_o"

    .line 652
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 654
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p7, :cond_2

    .line 655
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 656
    :cond_2
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    move-object v0, v6

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    return-object v6

    .line 644
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 646
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid conditional property event name"

    .line 647
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "_ev"

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0, v1, p2, v2, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 410
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    const/4 p1, 0x0

    .line 413
    invoke-direct {p0, v1, p2, p1, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;
    .locals 6

    .line 849
    :try_start_0
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    const/4 v1, 0x4

    .line 851
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "v%s.%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 852
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    aput-object p4, v1, v5

    aput-object p3, v1, v3

    const/4 p1, 0x3

    .line 853
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    .line 854
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzx()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "&ddl_test=1"

    .line 856
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 857
    :cond_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 859
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    .line 860
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Failed to create BOW URL for Deferred Deep Link. exception"

    .line 861
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .locals 0

    .line 890
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza()V

    return-void
.end method

.method final zza(Landroid/os/Bundle;J)V
    .locals 5

    const-string v0, "_et"

    .line 748
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Params already contained engagement"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v2, "_et"

    add-long/2addr p2, v0

    .line 751
    invoke-virtual {p1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method final zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 494
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 537
    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 538
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 540
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 541
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 542
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 544
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 545
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 547
    :cond_3
    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 548
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_4
    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 551
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 552
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p3

    .line 553
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    .line 554
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 555
    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;I)V
    .locals 2

    .line 767
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 768
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 772
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;J)V
    .locals 2

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 761
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 762
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 765
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;Landroid/os/Bundle;)V
    .locals 1

    .line 788
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 791
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;Ljava/lang/String;)V
    .locals 2

    .line 753
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 754
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 758
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzw;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 806
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 807
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 810
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;Z)V
    .locals 2

    .line 781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 782
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 786
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzw;[B)V
    .locals 2

    .line 774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 775
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 776
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzw;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 779
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzeu;I)V
    .locals 8

    .line 476
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 477
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_0

    const/16 v3, 0x30

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event can\'t contain more than "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " params"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    .line 483
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzeu;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 485
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 486
    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/os/Bundle;I)Z

    .line 488
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzky;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 557
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/os/Bundle;I)Z

    .line 561
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x6

    if-eq p3, p4, :cond_1

    const/4 p4, 0x7

    if-eq p3, p4, :cond_1

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    :cond_1
    const-string p3, "_el"

    int-to-long p4, p6

    .line 564
    invoke-virtual {v0, p3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 565
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p3

    sget-object p4, Lcom/google/android/gms/measurement/internal/zzas;->zzcn:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 566
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzky;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 567
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 568
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p1

    const-string p2, "auto"

    const-string p3, "_err"

    .line 569
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final zza(Ljava/lang/String;D)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const/4 v0, 0x0

    .line 864
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v1

    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 865
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 866
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deeplink"

    .line 867
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "timestamp"

    .line 869
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 870
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 873
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 150
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 85
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 88
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 92
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    .line 95
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 98
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 100
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    .line 190
    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 193
    :cond_3
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 194
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p3

    .line 196
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    .line 197
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 198
    invoke-virtual {p3, v0, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v0
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 256
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzi(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 257
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzk()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    .line 259
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 260
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 261
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 263
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 266
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 267
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p3, "Invalid admob_app_id. Analytics disabled."

    .line 270
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 272
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzk()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 275
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 130
    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkv;->zza:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 132
    invoke-virtual {p4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Name starts with reserved prefix. Type, name"

    .line 139
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_3
    if-eqz p2, :cond_5

    .line 141
    invoke-static {p4, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 142
    invoke-static {p4, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_5
    return v4
.end method

.method final zzb(Ljava/lang/String;)I
    .locals 3

    const-string v0, "user property"

    .line 166
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "user property"

    .line 168
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgx;->zza:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0xf

    return p1

    :cond_1
    const-string v0, "user property"

    const/16 v2, 0x18

    .line 170
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    const-string v0, "_ldl"

    .line 524
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user property referrer"

    .line 526
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzj(Ljava/lang/String;)I

    move-result v1

    .line 527
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "user property"

    .line 529
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzj(Ljava/lang/String;)I

    move-result v1

    .line 530
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    .line 891
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb()V

    return-void
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 106
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 109
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 113
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 115
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 118
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 121
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 123
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "_ldl"

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzj(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 534
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzj(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    .line 892
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzc()V

    return-void
.end method

.method final zzc(Ljava/lang/String;)Z
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zze(Ljava/lang/String;)Z
    .locals 1

    .line 624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzw()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzf()J
    .locals 6

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 18
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zze:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zze:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 23
    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method final zzg()Ljava/security/SecureRandom;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:Ljava/security/SecureRandom;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzc:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public final zzi()I
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 742
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/Integer;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final zzj()Z
    .locals 2

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 1

    .line 893
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 894
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 1

    .line 895
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 1

    .line 896
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 1

    .line 897
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 898
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 899
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 1

    .line 900
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    .line 901
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 1

    .line 902
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method
