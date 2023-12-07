.class public final Lcom/google/android/gms/measurement/internal/zzen;
.super Lcom/google/android/gms/measurement/internal/zzg;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzg:J

    return-void
.end method

.method private final zzah()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzbk:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Disabled IID for tests."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_2
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-object v1

    :catch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :catch_2
    return-object v1
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 35

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    new-instance v30, Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzaa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzae()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzf:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzf:J

    :cond_0
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzf:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v7

    iget-boolean v7, v7, Lcom/google/android/gms/measurement/internal/zzfc;->zzq:Z

    const/4 v8, 0x1

    xor-int/lit8 v14, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzah()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    :goto_0
    const-wide/16 v17, 0x0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v15

    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzfc;->zzh:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v9, v20, v9

    if-nez v9, :cond_2

    iget-wide v9, v7, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    move-wide/from16 v21, v9

    move/from16 v20, v14

    goto :goto_1

    :cond_2
    iget-wide v9, v7, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    move/from16 v20, v14

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide/from16 v21, v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzaf()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzab;->zzg()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    const-string v9, "google_analytics_ssaid_collection_enabled"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v8

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfc;->zzf()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "deferred_analytics_collection"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    const-string v9, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_5

    const/16 v28, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    xor-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v28, v7

    :goto_4
    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzg:J

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzen;->zzh:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzad()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v7

    goto :goto_5

    :cond_6
    const/16 v29, 0x0

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzx()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    const-string v0, ""

    :goto_6
    move-object/from16 v31, v0

    const-wide/32 v7, 0x8101

    move-object/from16 v0, v30

    move-object/from16 v32, v9

    move-wide v9, v11

    move-object/from16 v11, p1

    move v12, v13

    move/from16 v13, v20

    move-wide/from16 v33, v14

    move-object/from16 v14, v16

    move-wide/from16 v15, v17

    move-wide/from16 v17, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-wide/from16 v25, v33

    move-object/from16 v27, v32

    move-object/from16 v28, v29

    move-object/from16 v29, v31

    invoke-direct/range {v0 .. v29}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30
.end method

.method public final bridge synthetic zza()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    return-void
.end method

.method final zzaa()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Ljava/lang/String;

    return-object p0
.end method

.method final zzab()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method final zzac()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzk:Ljava/lang/String;

    return-object p0
.end method

.method final zzad()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzl:Ljava/lang/String;

    return-object p0
.end method

.method final zzae()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzc:I

    return p0
.end method

.method final zzaf()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    iget p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzi:I

    return p0
.end method

.method final zzag()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzh:Ljava/util/List;

    return-object p0
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zza;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzhb;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzen;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzir;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzii;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzem;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzjx;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object p0

    return-object p0
.end method

.method protected final zzy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final zzz()V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string/jumbo v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v2

    goto :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v3

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v2

    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v2

    move-object v2, v8

    goto :goto_3

    :catch_2
    move-object v7, v2

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    invoke-virtual {v8, v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, v7

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzc:I

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzen;->zze:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzf:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleServices;->initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_5

    :cond_5
    move v6, v4

    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "am"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_6

    :cond_6
    move v7, v4

    :goto_6
    or-int/2addr v6, v7

    if-nez v6, :cond_8

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzf()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzf()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v10, "GoogleService failed to initialize, status"

    invoke-virtual {v8, v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzab()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement disabled"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzf()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "Invalid scion state in identity"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :goto_8
    if-nez v2, :cond_9

    move v2, v5

    goto :goto_9

    :cond_9
    move v2, v4

    :goto_9
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzj:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzk:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzl:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzn()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzk:Ljava/lang/String;

    :cond_a
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpa;->zzb()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzcb:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v6

    const-string v7, "google_app_id"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzig;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_b
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object v6

    :goto_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v7, v3

    goto :goto_b

    :cond_c
    move-object v7, v6

    :goto_b
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v8, "admob_app_id"

    if-eqz v7, :cond_f

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string v9, "ga_app_id"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_c

    :cond_d
    move-object v3, v9

    :goto_c
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzk:Ljava/lang/String;

    goto :goto_d

    :cond_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v3, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzk:Ljava/lang/String;

    :cond_10
    :goto_d
    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzj:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzk:Ljava/lang/String;

    goto :goto_e

    :cond_11
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzj:Ljava/lang/String;

    :goto_e
    invoke-virtual {v2, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :catch_3
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v3, v6, v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzh:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    const-string v2, "analytics.safelisted_events"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :goto_10
    move v5, v4

    goto :goto_11

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v6

    const-string v7, "safelisted event"

    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_10

    :cond_15
    :goto_11
    if-eqz v5, :cond_16

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzh:Ljava/util/List;

    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_18

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzi:I

    return-void

    :cond_17
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzi:I

    return-void

    :cond_18
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzi:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
