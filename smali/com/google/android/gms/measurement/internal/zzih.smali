.class final Lcom/google/android/gms/measurement/internal/zzih;
.super Lcom/google/android/gms/measurement/internal/zzki;
.source "com.google.android.gms:play-services-measurement@@18.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 243
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)[B
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzih;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzad()V

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzav:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-array v0, v3, [B

    return-object v0

    :cond_0
    const-string v2, "_iap"

    .line 11
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_1

    const-string v2, "_iapx"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3, v15, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v14

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    move-result-object v13

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    .line 19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v11

    if-nez v11, :cond_2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    new-array v0, v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-object v0

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v2

    if-nez v2, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-array v0, v3, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-object v0

    .line 30
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const-string v4, "android"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v12

    .line 31
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 32
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 33
    :cond_4
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 34
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 35
    :cond_5
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 36
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 37
    :cond_6
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 40
    :cond_7
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_0

    .line 45
    :cond_8
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_0

    .line 47
    :cond_9
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_0

    .line 49
    :cond_a
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 50
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_0

    .line 51
    :cond_b
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 52
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 53
    :cond_c
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    .line 54
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 55
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzih;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zzh(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 58
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 59
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_1

    .line 61
    :cond_d
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    .line 62
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 63
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 64
    :cond_e
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 66
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 70
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzf()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v4

    .line 71
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzjr;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)Landroid/util/Pair;

    move-result-object v4

    .line 72
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v5

    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_11

    .line 74
    :try_start_3
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_11

    .line 85
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    new-array v0, v3, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-object v0

    .line 87
    :cond_11
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    .line 89
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 90
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    .line 93
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 94
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzak;->zze()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzak;->zzf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 101
    :cond_12
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v2, v4}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :cond_13
    :try_start_7
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 111
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 113
    :cond_14
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v7, "_lte"

    .line 117
    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_3

    :cond_16
    move-object v6, v14

    :goto_3
    const-wide/16 v17, 0x0

    if-eqz v6, :cond_17

    .line 121
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    if-nez v4, :cond_18

    .line 122
    :cond_17
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v6, "auto"

    const-string v7, "_lte"

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 124
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v4, v10

    move-object v14, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 125
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzkw;)Z

    .line 127
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzak;->zzi()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-eqz v5, :cond_1b

    .line 130
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 132
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkj;->zzj()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zze(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 133
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v9, "Turning off ad personalization due to account type"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 135
    :cond_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 136
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v10, "_npa"

    .line 137
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 138
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 141
    :cond_1a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkw;

    const-string v22, "auto"

    const-string v23, "_npa"

    .line 142
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v24

    .line 143
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v20, v8

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v26}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 144
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    .line 146
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1c

    .line 147
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v5

    .line 148
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v5

    .line 149
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/zzkw;->zzd:J

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v5

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 154
    :cond_1c
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbz:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzca:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Lcom/google/android/gms/measurement/internal/zzaq;)Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzeu;I)V

    .line 163
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    move-object v14, v2

    goto :goto_5

    .line 165
    :cond_1d
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v2

    move-object v14, v2

    :goto_5
    const-string v2, "_c"

    .line 166
    invoke-virtual {v14, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const-string v2, "_r"

    .line 168
    invoke-virtual {v14, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "_o"

    .line 169
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zze(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    const-string v3, "_dbg"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v14, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v14, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 176
    new-instance v20, Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const-wide/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-wide/from16 v11, v21

    move-object/from16 v28, v13

    move-object/from16 v13, v16

    move-object/from16 v19, v14

    const/16 v21, 0x0

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v9, v17

    move-object/from16 v12, v20

    goto :goto_6

    :cond_1f
    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v19, v14

    const/16 v21, 0x0

    .line 177
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzam;->zzf:J

    .line 178
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 179
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(J)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v20

    move-wide v9, v3

    move-object/from16 v12, v20

    .line 180
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 181
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzih;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 182
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v2

    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzan;->zzc:J

    .line 183
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v2

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 184
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v2

    iget-wide v3, v13, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 185
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v2

    .line 186
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    .line 188
    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_7

    :cond_20
    move-object/from16 v3, v27

    .line 193
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    .line 194
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzh;->zza()Lcom/google/android/gms/internal/measurement/zzcd$zzh$zza;

    move-result-object v5

    .line 195
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;

    move-result-object v6

    iget-wide v7, v12, Lcom/google/android/gms/measurement/internal/zzam;->zzc:J

    .line 196
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;

    move-result-object v6

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 197
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;

    move-result-object v0

    .line 198
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzh$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzd$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzh$zza;

    move-result-object v0

    .line 199
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzh()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    .line 202
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 204
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v8

    .line 205
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 207
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 209
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zze()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v0

    .line 212
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 213
    :cond_21
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-eqz v0, :cond_22

    .line 215
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 216
    :cond_22
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzf;->zzj()J

    move-result-wide v6

    cmp-long v2, v6, v17

    if-eqz v2, :cond_23

    .line 218
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_8

    :cond_23
    if-eqz v0, :cond_24

    .line 220
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 221
    :cond_24
    :goto_8
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzf;->zzv()V

    .line 223
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v0

    const-wide/32 v4, 0x8101

    .line 224
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 226
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-object/from16 v0, v28

    .line 227
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v4

    move-object/from16 v2, v26

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    .line 229
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    .line 236
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgg;->zzbk()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zzc([B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    .line 240
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 241
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v21

    :catch_2
    move-exception v0

    .line 106
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    new-array v0, v3, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    .line 235
    throw v0
.end method

.method protected final zzd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
