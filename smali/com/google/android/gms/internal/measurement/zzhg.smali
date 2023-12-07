.class final Lcom/google/android/gms/internal/measurement/zzhg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzhb;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzhb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhb;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Lcom/google/android/gms/internal/measurement/zzhg;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzhb;)Lcom/google/android/gms/internal/measurement/zzhg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Lcom/google/android/gms/internal/measurement/zzhg;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Lcom/google/android/gms/internal/measurement/zzhg;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(Lcom/google/android/gms/internal/measurement/zzhb;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzlg;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhf;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzf()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzo()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzt()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzs()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzr()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzq()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzg()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzh()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zze()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzi()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzj()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzn()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzk()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method private final zza(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zziq;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zziq;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzn()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzgp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0
.end method

.method private static zzb(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iget v1, v1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzhb;->zzb:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzhb;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/measurement/zzhb;->zza:I

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzkb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;Lcom/google/android/gms/internal/measurement/zzhl;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd(I)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzij;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzij;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzkb;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzkb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;Lcom/google/android/gms/internal/measurement/zzhl;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I

    throw p1
.end method

.method private final zzd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final zza()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzhj;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhj;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzja;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzja<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzja;->zzd:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzij;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzij;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzja;->zzc:Lcom/google/android/gms/internal/measurement/zzlg;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzja;->zzd:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzja;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzii; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzij;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzij;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd(I)V

    throw p1
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    return p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzhx;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhx;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzix;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzix;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zze()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zze()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zze()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc()F

    move-result p0

    return p0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzf()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzix;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzg()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzg()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzf()I

    move-result p0

    return p0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzi()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzi()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzi()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzh()I

    move-result p0

    return p0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgp;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzn()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0
.end method

.method public final zzk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzi()Z

    move-result p0

    return p0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzj()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzk()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzn()Lcom/google/android/gms/internal/measurement/zzgp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzl()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p0

    return-object p0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p0

    return p0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzix;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzn()I

    move-result p0

    return p0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzo()I

    move-result p0

    return p0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzix;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzr()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    return-void
.end method

.method public final zzr()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzq()I

    move-result p0

    return p0
.end method

.method public final zzt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzr()J

    move-result-wide v0

    return-wide v0
.end method
