.class final Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzhc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhy;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhy;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhy;->zza(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final zza(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbd:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Activity created with data \'referrer\' without required params"

    const-string/jumbo v5, "utm_medium"

    const-string v6, "_cis"

    const-string/jumbo v7, "utm_source"

    const-string/jumbo v8, "utm_campaign"

    const-string v10, "gclid"

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzbf:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzbe:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v11, "https://google.com/search?"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    :goto_2
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v11, "referrer"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    const/4 v11, 0x0

    const-string v12, "_cmp"

    const/4 v13, 0x1

    if-eqz p1, :cond_7

    :try_start_2
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_8

    const-string v15, "intent"

    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzbd:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v14, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "_cer"

    const-string v15, "gclid=%s"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v11

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6, v0, v12, v14}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6, v0, v14}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :cond_8
    :goto_4
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzbf:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, "auto"

    if-eqz v6, :cond_a

    :try_start_3
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzbe:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v14, :cond_9

    invoke-virtual {v14, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    const-string v14, "_lgclid"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v9, v14, v15, v13}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_a
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    return-void

    :cond_b
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v14, "Activity created with referrer"

    invoke-virtual {v6, v14, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzbe:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v14, "_ldl"

    if-eqz v6, :cond_e

    if-eqz v3, :cond_c

    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v2, v0, v12, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v14, v2, v13}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_e
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "utm_term"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "utm_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move v11, v13

    :cond_10
    if-nez v11, :cond_11

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0, v9, v14, v2, v13}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_12
    return-void

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gs"

    goto :goto_0

    :cond_2
    const-string v0, "auto"

    :goto_0
    move-object v4, v0

    const-string v0, "referrer"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzib;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzib;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzii;->zzc(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzii;->zzb(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjz;-><init>(Lcom/google/android/gms/measurement/internal/zzjx;J)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjw;-><init>(Lcom/google/android/gms/measurement/internal/zzjx;J)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzii;->zzb(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
