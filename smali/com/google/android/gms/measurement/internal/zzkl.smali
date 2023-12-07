.class public Lcom/google/android/gms/measurement/internal/zzkl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzkl$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzkl;


# instance fields
.field private final zzaa:Lcom/google/android/gms/measurement/internal/zzky;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzfo;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzex;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzaf;

.field private zze:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzkh;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzr;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzkr;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzih;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzjr;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzfu;

.field private zzl:Z

.field private zzm:Z

.field private zzn:J

.field private zzo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Ljava/nio/channels/FileLock;

.field private zzv:Ljava/nio/channels/FileChannel;

.field private zzw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:J

.field private final zzz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzks;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzfu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzks;Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzl:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzko;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzks;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzy:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzh:Lcom/google/android/gms/measurement/internal/zzkr;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzex;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzex;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Lcom/google/android/gms/measurement/internal/zzfo;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzz:Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzks;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v1, "Failed to read from channel"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Bad channel to read from"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzf;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;
    .locals 8

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_4

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    :cond_3
    :goto_0
    move p3, v1

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzz()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 p3, 0x0

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    move p3, v1

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Ljava/lang/String;)V

    move p3, v1

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Ljava/lang/String;)V

    move p3, v1

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    move p3, v1

    :cond_c
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_d

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    move p3, v1

    :cond_d
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    move p3, v1

    :cond_e
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(J)V

    move p3, v1

    :cond_f
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    move p3, v1

    :cond_10
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_11

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zze(J)V

    move p3, v1

    :cond_11
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v2

    if-eq v0, v2, :cond_12

    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    move p3, v1

    :cond_12
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(Ljava/lang/String;)V

    move p3, v1

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzbx:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_14

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    move p3, v1

    :cond_14
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v2

    if-eq v0, v2, :cond_15

    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Z)V

    move p3, v1

    :cond_15
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Z

    move-result v2

    if-eq v0, v2, :cond_16

    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Z)V

    move p3, v1

    :cond_16
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v2, :cond_17

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/Boolean;)V

    move p3, v1

    :cond_17
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(J)V

    move p3, v1

    :cond_18
    if-eqz p3, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_19
    return-object p2
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzkl;)Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkl;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/zzkl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzz()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V
    .locals 3

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

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V
    .locals 9

    if-eqz p4, :cond_0

    const-string v0, "_se"

    goto :goto_0

    :cond_0
    const-string v0, "_lte"

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const/4 v2, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzkw;)Z

    if-eqz p4, :cond_5

    const-string p1, "session-scoped"

    goto :goto_3

    :cond_5
    const-string p1, "lifetime"

    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    iget-object p2, v8, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    const-string p3, "Updated engagement user property. scope, value"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzf;)V
    .locals 10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkm;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzkm;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzex;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzez;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzks;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzks;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzd:Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzj:Lcom/google/android/gms/measurement/internal/zzjr;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzg:Lcom/google/android/gms/measurement/internal/zzr;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzi:Lcom/google/android/gms/measurement/internal/zzih;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzak()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Lcom/google/android/gms/measurement/internal/zzkh;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Lcom/google/android/gms/measurement/internal/zzfa;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzp:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzq:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzl:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbr:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p1, v4, :cond_1

    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_1
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p2, "Failed to write to channel"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Bad channel to read from"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final zza(Ljava/lang/String;J)Z
    .locals 43

    move-object/from16 v1, p0

    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzkl$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzkk;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzy:J

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_1
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v14, :cond_3

    cmp-long v14, v6, v9

    if-eqz v14, :cond_0

    :try_start_2
    new-array v8, v11, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v4

    :goto_0
    move-object v4, v1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v6, v4

    move-object v8, v6

    :goto_1
    move-object v4, v0

    goto/16 :goto_a

    :cond_0
    :try_start_3
    new-array v8, v13, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_2
    if-eqz v14, :cond_1

    :try_start_4
    const-string v14, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_1
    move-object v14, v2

    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x94

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_2

    if-eqz v4, :cond_c

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_b

    :cond_2
    :try_start_8
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v42, v8

    move-object v8, v4

    move-object/from16 v4, v42

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v4

    goto :goto_1

    :cond_3
    cmp-long v4, v6, v9

    if-eqz v4, :cond_4

    const/4 v8, 0x2

    :try_start_a
    new-array v11, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v11, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v13

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    :goto_4
    if-eqz v4, :cond_5

    const-string v4, " and rowid <= ?"

    goto :goto_5

    :cond_5
    move-object v4, v2

    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " order by rowid limit 1;"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v8, :cond_6

    if-eqz v4, :cond_c

    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto/16 :goto_b

    :cond_6
    :try_start_d
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v8, v4

    const/4 v4, 0x0

    :goto_6
    :try_start_e
    const-string v16, "raw_events_metadata"

    const-string v14, "metadata"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "app_id = ? and metadata_fingerprint = ?"

    const/4 v14, 0x2

    new-array v9, v14, [Ljava/lang/String;

    aput-object v4, v9, v12

    aput-object v11, v9, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const-string v22, "2"

    move-object v14, v15

    move-object v10, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v9

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "Raw event metadata record is missing. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v8, :cond_c

    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_b

    :cond_7
    :try_start_10
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzji;[B)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v14

    const-string v15, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-interface {v3, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V

    const-wide/16 v13, -0x1

    cmp-long v9, v6, v13

    if-eqz v9, :cond_9

    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    aput-object v4, v14, v12

    const/4 v13, 0x1

    aput-object v11, v14, v13

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v14, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v14

    goto :goto_7

    :cond_9
    const-string v6, "app_id = ? and metadata_fingerprint = ?"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    aput-object v4, v9, v12

    const/4 v7, 0x1

    aput-object v11, v9, v7

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    :goto_7
    const-string v15, "raw_events"

    const-string v6, "rowid"

    const-string v7, "name"

    const-string/jumbo v9, "timestamp"

    const-string v11, "data"

    filled-new-array {v6, v7, v9, v11}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const/16 v22, 0x0

    move-object v14, v10

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v8, "Raw event data disappeared while in transaction. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v6, :cond_c

    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto/16 :goto_b

    :cond_a
    :try_start_15
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzji;[B)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    const/4 v10, 0x1

    :try_start_17
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zza(JLcom/google/android/gms/internal/measurement/zzcd$zzc;)Z

    move-result v7
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-nez v7, :cond_b

    if-eqz v6, :cond_c

    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v7, v0

    :try_start_19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-nez v7, :cond_a

    if-eqz v6, :cond_c

    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v8, v6

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v6, v0

    :try_start_1b
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v9, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    if-eqz v8, :cond_c

    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v6, v8

    :goto_8
    move-object v8, v4

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v6, v4

    const/4 v8, 0x0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object v4, v1

    const/4 v8, 0x0

    :goto_9
    move-object v1, v0

    goto/16 :goto_48

    :catch_7
    move-exception v0

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_a
    :try_start_1d
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v7, "Data loss. Error selecting raw event. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    if-eqz v6, :cond_c

    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_b
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_c

    :cond_d
    move v4, v12

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-nez v4, :cond_7e

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v5

    move v8, v12

    move v13, v8

    move v14, v13

    const-wide/16 v9, 0x0

    const/4 v12, -0x1

    const/4 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_e
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    const-string v7, "_et"

    const-string v11, "_e"

    move/from16 v20, v13

    move/from16 v21, v14

    if-ge v8, v6, :cond_42

    :try_start_1f
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v13

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    const-string v13, "_err"

    if-eqz v2, :cond_12

    :try_start_20
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v7, "Dropping blacklisted raw event. appId"

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v14

    move/from16 v25, v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v11, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfo;->zzh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v2, 0x1

    :goto_10
    if-nez v2, :cond_11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v26

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0xb

    const-string v30, "_ev"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v27, v2

    invoke-virtual/range {v26 .. v32}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move-object v11, v4

    move/from16 v28, v5

    move-wide v13, v9

    move/from16 v2, v21

    move/from16 v7, v25

    const/4 v4, -0x1

    const/4 v10, 0x3

    goto/16 :goto_29

    :cond_12
    move/from16 v25, v8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzcl:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v8, v14}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    const-string v8, "_ai"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "_ai"

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v8, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v8

    if-ge v2, v8, :cond_14

    const-string v8, "ad_platform"

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "admob"

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v14, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v8, v14}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    const-string v8, "_c"

    if-nez v2, :cond_1b

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-wide/from16 v26, v9

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x171c4

    if-eq v9, v10, :cond_17

    const v10, 0x17331

    if-eq v9, v10, :cond_16

    const v10, 0x17333

    if-eq v9, v10, :cond_15

    goto :goto_12

    :cond_15
    const-string v9, "_ui"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    goto :goto_13

    :cond_16
    const-string v9, "_ug"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x2

    goto :goto_13

    :cond_17
    const-string v9, "_in"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    const/4 v9, -0x1

    :goto_13
    if-eqz v9, :cond_19

    const/4 v10, 0x1

    if-eq v9, v10, :cond_19

    const/4 v10, 0x2

    if-eq v9, v10, :cond_19

    const/4 v9, 0x0

    goto :goto_14

    :cond_19
    const/4 v9, 0x1

    :goto_14
    if-eqz v9, :cond_1a

    goto :goto_15

    :cond_1a
    move/from16 v28, v5

    move-object/from16 v30, v11

    move/from16 v29, v15

    move-object v11, v4

    goto/16 :goto_1b

    :cond_1b
    move-wide/from16 v26, v9

    :goto_15
    move/from16 v28, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    move/from16 v29, v15

    const-string v15, "_r"

    if-ge v9, v5, :cond_1e

    :try_start_22
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-object/from16 v30, v11

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v6, v9, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const/4 v10, 0x1

    goto :goto_17

    :cond_1c
    move-object/from16 v30, v11

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    const-wide/16 v14, 0x1

    invoke-virtual {v5, v14, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v6, v9, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const/4 v14, 0x1

    :cond_1d
    :goto_17
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v29

    move-object/from16 v11, v30

    goto :goto_16

    :cond_1e
    move-object/from16 v30, v11

    if-nez v10, :cond_1f

    if-eqz v2, :cond_1f

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v9, "Marking event as conversion"

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    const-wide/16 v9, 0x1

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    :cond_1f
    if-nez v14, :cond_20

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v9, "Marking event as real-time"

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    const-wide/16 v9, 0x1

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzy()J

    move-result-wide v32

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v31 .. v39}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;)I

    move-result v5

    move-object v11, v4

    int-to-long v4, v5

    cmp-long v4, v9, v4

    if-lez v4, :cond_21

    invoke-static {v6, v15}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    goto :goto_18

    :cond_21
    const/16 v20, 0x1

    :goto_18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    if-eqz v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzy()J

    move-result-wide v32

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v31 .. v39}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/zzae;->zzc:J

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzm:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v9, v10, v14}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v4, v4, v9

    if-lez v4, :cond_27

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v14

    if-ge v4, v14, :cond_24

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move v10, v4

    goto :goto_1a

    :cond_22
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    const/4 v5, 0x1

    :cond_23
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_24
    if-eqz v5, :cond_25

    if-eqz v9, :cond_25

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_1b

    :cond_25
    if-eqz v9, :cond_26

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgi;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v4

    const-wide/16 v13, 0xa

    invoke-virtual {v4, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v6, v10, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_1b

    :cond_26
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    :goto_1b
    if-eqz v2, :cond_30

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v9, -0x1

    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_2a

    const-string/jumbo v10, "value"

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    move v5, v4

    goto :goto_1d

    :cond_28
    const-string v10, "currency"

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    move v9, v4

    :cond_29
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v4, -0x1

    if-eq v5, v4, :cond_31

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Value must be specified with a numeric type."

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-static {v6, v8}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    const/16 v2, 0x12

    const-string/jumbo v4, "value"

    invoke-static {v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V

    goto :goto_21

    :cond_2b
    const/4 v4, -0x1

    if-ne v9, v4, :cond_2c

    const/4 v2, 0x1

    const/4 v10, 0x3

    goto :goto_20

    :cond_2c
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2d

    :goto_1e
    const/4 v2, 0x1

    goto :goto_20

    :cond_2d
    const/4 v9, 0x0

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v9, v13, :cond_2f

    invoke-virtual {v2, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-nez v14, :cond_2e

    goto :goto_1e

    :cond_2e
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v9, v13

    goto :goto_1f

    :cond_2f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_32

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-static {v6, v8}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    const/16 v2, 0x13

    const-string v5, "currency"

    invoke-static {v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V

    goto :goto_22

    :cond_30
    :goto_21
    const/4 v4, -0x1

    :cond_31
    const/4 v10, 0x3

    :cond_32
    :goto_22
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzas:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v30

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v8, "_fr"

    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_34

    if-eqz v18, :cond_33

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    sub-long/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v13, 0x3e8

    cmp-long v2, v8, v13

    if-gtz v2, :cond_33

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzgi;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-direct {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-virtual {v11, v12, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move/from16 v8, v29

    :goto_23
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto/16 :goto_26

    :cond_33
    move-object/from16 v17, v6

    move/from16 v8, v21

    goto/16 :goto_26

    :cond_34
    move/from16 v8, v29

    goto/16 :goto_26

    :cond_35
    const-string v2, "_vs"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_34

    if-eqz v17, :cond_36

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    sub-long/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v13, 0x3e8

    cmp-long v2, v8, v13

    if-gtz v2, :cond_36

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzgi;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z

    move-result v8

    if-eqz v8, :cond_36

    move/from16 v8, v29

    invoke-virtual {v11, v8, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_23

    :cond_36
    move/from16 v8, v29

    move-object/from16 v18, v6

    move/from16 v12, v21

    goto/16 :goto_26

    :cond_37
    move/from16 v8, v29

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzbl:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v9, v13}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "_ab"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_3e

    if-eqz v17, :cond_3e

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v23

    sub-long v13, v13, v23

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v23, 0xfa0

    cmp-long v2, v13, v23

    if-gtz v2, :cond_3e

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzgi;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v13, "_sn"

    invoke-static {v9, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v14, "_sc"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v15, "_si"

    invoke-static {v14, v15}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    if-eqz v9, :cond_38

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v9

    goto :goto_24

    :cond_38
    move-object/from16 v9, v22

    :goto_24
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v15, "_sn"

    invoke-static {v6, v15, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    if-eqz v13, :cond_3a

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v9

    goto :goto_25

    :cond_3a
    move-object/from16 v9, v22

    :goto_25
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v13, "_sc"

    invoke-static {v6, v13, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3b
    if-eqz v14, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v9, "_si"

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v6, v9, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c
    invoke-virtual {v11, v8, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/16 v17, 0x0

    goto :goto_26

    :cond_3d
    move/from16 v8, v29

    move-object/from16 v5, v30

    :cond_3e
    :goto_26
    if-nez v28, :cond_41

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Engagement event does not contain any parameters. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_40

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Engagement event does not include duration. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long v13, v26, v13

    goto :goto_28

    :cond_41
    :goto_27
    move-wide/from16 v13, v26

    :goto_28
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzc:Ljava/util/List;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move/from16 v7, v25

    invoke-interface {v2, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v21, 0x1

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move v15, v8

    :goto_29
    add-int/lit8 v8, v7, 0x1

    move-object v4, v11

    move-wide v9, v13

    move/from16 v13, v20

    move/from16 v5, v28

    move v14, v2

    move-object/from16 v2, v22

    goto/16 :goto_e

    :cond_42
    move/from16 v28, v5

    move-wide/from16 v26, v9

    move-object v5, v11

    move-object v11, v4

    if-eqz v28, :cond_46

    move/from16 v4, v21

    move-wide/from16 v9, v26

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v4, :cond_47

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v8, "_fr"

    invoke-static {v6, v8}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v8

    if-eqz v8, :cond_43

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v6

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2b

    :cond_44
    const/4 v6, 0x0

    :goto_2b
    if-eqz v6, :cond_45

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-lez v8, :cond_45

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v9, v12

    :cond_45
    :goto_2c
    const/4 v6, 0x1

    add-int/2addr v2, v6

    goto :goto_2a

    :cond_46
    move-wide/from16 v9, v26

    :cond_47
    const/4 v2, 0x0

    invoke-direct {v1, v11, v9, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v5, "_s"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v2, 0x1

    goto :goto_2d

    :cond_49
    const/4 v2, 0x0

    :goto_2d
    if-eqz v2, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_se"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    const-string v2, "_sid"

    invoke-static {v11, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4b

    const/4 v2, 0x1

    goto :goto_2e

    :cond_4b
    const/4 v2, 0x0

    :goto_2e
    if-eqz v2, :cond_4c

    const/4 v2, 0x1

    invoke-direct {v1, v11, v9, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V

    goto :goto_2f

    :cond_4c
    const-string v2, "_se"

    invoke-static {v11, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4d

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Checking account type status for ad personalization signals"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkj;->zzj()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zze(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkj;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzak;->zzi()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Turning off ad personalization due to account type"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v4

    const-string v5, "_npa"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzak;->zzg()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const/4 v4, 0x0

    :goto_30
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze()I

    move-result v5

    if-ge v4, v5, :cond_4f

    const-string v5, "_npa"

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v11, v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v4, 0x1

    goto :goto_31

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_4f
    const/4 v4, 0x0

    :goto_31
    if-nez v4, :cond_50

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_50
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v2, 0x0

    :goto_32
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v4

    if-ge v2, v4, :cond_53

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_51

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_51
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_52

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoz;->zzb()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzcf:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_54
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzf()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzi(Ljava/lang/String;)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    if-eqz v2, :cond_70

    :try_start_23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkv;->zzg()Ljava/security/SecureRandom;

    move-result-object v5

    const/4 v6, 0x0

    :goto_33
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v7

    if-ge v6, v7, :cond_6e

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_ep"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    if-eqz v8, :cond_59

    :try_start_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v9, "_en"

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzam;

    if-nez v9, :cond_55

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Ljava/lang/Long;

    if-nez v8, :cond_58

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v8, v12, v14

    if-lez v8, :cond_56

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v8, "_sr"

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    invoke-static {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_56
    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    if-eqz v8, :cond_57

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v8, "_efs"

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v8, v12}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_57
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-virtual {v11, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :goto_34
    move-object/from16 p1, v5

    move v1, v6

    move-object v5, v2

    goto/16 :goto_3d

    :cond_59
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfo;->zzf(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v12

    invoke-static {v12, v13, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(JJ)J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v14, "_dbg"

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    if-nez v17, :cond_5f

    if-nez v15, :cond_5a

    goto :goto_36

    :cond_5a
    :try_start_26
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_35
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-object/from16 p1, v10

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    instance-of v10, v15, Ljava/lang/Long;

    if-eqz v10, :cond_5b

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    :cond_5b
    instance-of v10, v15, Ljava/lang/String;

    if-eqz v10, :cond_5c

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    :cond_5c
    instance-of v10, v15, Ljava/lang/Double;

    if-eqz v10, :cond_5f

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    :cond_5d
    const/4 v10, 0x1

    goto :goto_37

    :cond_5e
    move-object/from16 v10, p1

    goto :goto_35

    :cond_5f
    :goto_36
    const/4 v10, 0x0

    :goto_37
    if-nez v10, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v10

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_38

    :cond_60
    const/4 v10, 0x1

    :goto_38
    if-gtz v10, :cond_61

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v9, "Sample rate must be positive. event, rate"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v12, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    goto/16 :goto_34

    :cond_61
    :try_start_27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzam;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    if-nez v14, :cond_62

    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v14

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v17, v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v15, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    if-nez v14, :cond_63

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v9, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v9, v14, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v25, v8

    invoke-direct/range {v25 .. v41}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    move-object v14, v8

    goto :goto_39

    :cond_62
    move-wide/from16 v17, v8

    :cond_63
    :goto_39
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v9, "_eid"

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_64

    const/4 v9, 0x1

    goto :goto_3a

    :cond_64
    const/4 v9, 0x0

    :goto_3a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    const/4 v15, 0x1

    if-ne v10, v15, :cond_67

    :try_start_2a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_66

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Ljava/lang/Long;

    if-nez v8, :cond_65

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    if-nez v8, :cond_65

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    if-eqz v8, :cond_66

    :cond_65
    const/4 v8, 0x0

    invoke-virtual {v14, v8, v8, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    invoke-virtual {v11, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    goto/16 :goto_34

    :cond_67
    :try_start_2b
    invoke-virtual {v5, v10}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    if-nez v15, :cond_69

    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v8, "_sr"

    move-object/from16 p1, v5

    move v15, v6

    int-to-long v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    :cond_68
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v8

    invoke-virtual {v14, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    move-object v5, v2

    goto/16 :goto_3c

    :cond_69
    move-object/from16 p1, v5

    move v15, v6

    :try_start_2d
    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzh:Ljava/lang/Long;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    if-eqz v5, :cond_6a

    :try_start_2e
    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzh:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    move-object/from16 v19, v2

    goto :goto_3b

    :cond_6a
    :try_start_2f
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzg()J

    move-result-wide v5

    move-object/from16 v19, v2

    move-wide/from16 v1, v17

    invoke-static {v5, v6, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(JJ)J

    move-result-wide v5

    :goto_3b
    cmp-long v1, v5, v12

    if-eqz v1, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v1, "_efs"

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v1, "_sr"

    int-to-long v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    :cond_6b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    move-object/from16 v5, v19

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_6c
    move-object/from16 v5, v19

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v14, v8, v2, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_3c
    move v1, v15

    invoke-virtual {v11, v1, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_3d
    add-int/lit8 v6, v1, 0x1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v5, p1

    goto/16 :goto_33

    :cond_6e
    move-object v5, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_6f

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_6f
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_3e

    :cond_70
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    if-nez v2, :cond_71

    move-object/from16 v4, p0

    :try_start_30
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_43

    :cond_71
    move-object/from16 v4, p0

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v5

    if-lez v5, :cond_76

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_72

    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_3f

    :cond_72
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_3f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzj()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v12, v7, v9

    if-nez v12, :cond_73

    goto :goto_40

    :cond_73
    move-wide v5, v7

    :goto_40
    cmp-long v7, v5, v9

    if-eqz v7, :cond_74

    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_41

    :cond_74
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzv()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_75

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_42

    :cond_75
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_76
    :goto_43
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v2

    if-lez v2, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zza()Z

    move-result v5

    if-nez v5, :cond_77

    goto :goto_44

    :cond_77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzb()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_45

    :cond_78
    :goto_44
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-wide/16 v5, -0x1

    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_45

    :cond_79
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move/from16 v12, v20

    invoke-virtual {v2, v5, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;Z)Z

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl$zza;->zzb:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_46
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7c

    if-eqz v6, :cond_7b

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_7c
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_7d

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v6, "Deleted fewer rows from raw events table than expected"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    :try_start_31
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_31} :catch_8
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    goto :goto_47

    :catch_8
    move-exception v0

    move-object v3, v0

    :try_start_32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    const/4 v1, 0x1

    return v1

    :catchall_4
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_49

    :cond_7e
    move-object v4, v1

    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    const/4 v1, 0x0

    return v1

    :catchall_5
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v8, v6

    :goto_48
    if-eqz v8, :cond_7f

    :try_start_34
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_49

    :catchall_7
    move-exception v0

    move-object v4, v1

    :goto_49
    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw v1
.end method

.method private final zzaa()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->d_()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzab()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzv()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzw()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zze()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzz:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzy()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->e_()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzab;->zzw()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzu:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    :cond_5
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzt:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    :cond_6
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzs:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzaf;->zzv()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zzw()J

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    :cond_7
    move-wide v8, v3

    goto/16 :goto_5

    :cond_8
    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_9

    cmp-long v5, v8, v3

    if-lez v5, :cond_9

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    add-long/2addr v8, v12

    goto :goto_3

    :cond_a
    move-wide v8, v10

    :goto_3
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x14

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzab:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzaa:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long/2addr v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzv()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzw()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zze()V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzv()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzw()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zze()V

    return-void

    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zze:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzq:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzv()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_10

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzv:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzw()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(J)V

    return-void

    :cond_11
    :goto_6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzv()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzw()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zze()V

    return-void
.end method

.method private final zzac()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzs:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzo:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzo:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzs:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v3, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzad()Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbh:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzv:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzv:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzu:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v1, "Storage lock already acquired"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v1, "Failed to access storage lock file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v1, "Failed to acquire storage lock"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "App version does not match; dropping. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_1
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v14

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v22

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Z

    move-result v23

    const/16 v24, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v27

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzai()Ljava/util/List;

    move-result-object v29

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v31

    if-eqz v31, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v1, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    goto :goto_0

    :cond_2
    const/16 v31, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move-wide v7, v9

    move-wide v9, v11

    move-object v11, v13

    move v12, v14

    const/4 v13, 0x0

    move-object/from16 v14, v16

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    invoke-direct/range {v0 .. v29}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "No app data available; dropping"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v3

    int-to-long p0, p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "_fr"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbz:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Lcom/google/android/gms/measurement/internal/zzaq;)Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzeu;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbd:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzku;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzki;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzai()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_sno"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v7, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v10, 0xb

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v11, "_ev"

    move-object v9, v15

    move-object v4, v13

    move v13, v2

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move-object v4, v13

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzu()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzt()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzy:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-lez v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzbv:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Lcom/google/android/gms/measurement/internal/zzaq;)Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzeu;I)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    :cond_7
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Lcom/google/android/gms/measurement/internal/zzaq;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Logging event"

    invoke-virtual {v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    const-string v7, "ecommerce_purchase"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "refund"

    if-nez v7, :cond_a

    :try_start_1
    const-string v7, "purchase"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v7, 0x1

    :goto_4
    const-string v10, "_iap"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_16

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    const-string v11, "currency"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzap;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v11, "value"

    if-eqz v7, :cond_f

    :try_start_2
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzap;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v7, v17, v21

    if-nez v7, :cond_d

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzap;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-double v11, v12

    mul-double v17, v11, v19

    :cond_d
    const-wide/high16 v11, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, v17, v11

    if-gtz v7, :cond_e

    const-wide/high16 v11, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v7, v17, v11

    if-ltz v7, :cond_e

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    neg-long v11, v11

    goto :goto_7

    :cond_e
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_f
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzap;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :cond_10
    :goto_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "[A-Z]{3}"

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "_ltv_"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_11
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v10, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-nez v9, :cond_12

    goto :goto_9

    :cond_12
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    new-instance v17, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    add-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, v17

    move-object v8, v15

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide/from16 v11, v18

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v6, v17

    goto :goto_b

    :cond_13
    :goto_9
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzad:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v9, v15, v13}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v15, v6, v5

    const/16 v16, 0x1

    aput-object v15, v6, v16

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v6, v16

    invoke-virtual {v13, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v8, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v6

    move-object v8, v15

    move-wide/from16 v11, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzkw;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v10

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v15

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :cond_14
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    :cond_15
    :goto_c
    const/16 v16, 0x1

    :goto_d
    if-nez v16, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :cond_16
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    :cond_17
    :try_start_5
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzap;)J

    move-result-wide v7

    const-wide/16 v19, 0x1

    add-long v11, v7, v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzy()J

    move-result-wide v8

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v14, v6

    move-object/from16 p1, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v7 .. v17}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    const-wide/16 v15, 0x3e8

    if-lez v10, :cond_19

    rem-long/2addr v8, v15

    cmp-long v2, v8, v19

    if-nez v2, :cond_18

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :cond_19
    if-eqz v6, :cond_1b

    :try_start_6
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzl:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v12

    if-lez v10, :cond_1b

    rem-long/2addr v8, v15

    cmp-long v3, v8, v19

    if-nez v3, :cond_1a

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v10, 0x10

    const-string v11, "_ev"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :cond_1b
    if-eqz v18, :cond_1d

    :try_start_7
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v10, v11, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)I

    move-result v10

    const v11, 0xf4240

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v12

    if-lez v10, :cond_1d

    cmp-long v2, v8, v19

    if-nez v2, :cond_1c

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :cond_1d
    :try_start_8
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v15

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    const-string v8, "_o"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v15, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    move-object/from16 v11, p1

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzkv;->zze(Ljava/lang/String;)Z

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v10, "_r"

    if-eqz v7, :cond_1e

    :try_start_9
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v15, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v15, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    const-string v7, "_s"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    if-eqz v7, :cond_1f

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_1f

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v8, v15, v4, v7}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v12

    if-lez v4, :cond_20

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v9, v5, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const-wide/16 v18, 0x0

    move-object v7, v4

    move-object v2, v10

    move-object v10, v11

    move-object/from16 v26, v11

    move-object v11, v5

    move-object/from16 v25, v14

    move-object v5, v15

    move-wide/from16 v14, v18

    move-object/from16 v16, v5

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    move-object/from16 v9, v26

    invoke-virtual {v5, v9, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    if-nez v5, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v7, v10

    if-ltz v5, :cond_21

    if-eqz v6, :cond_21

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :cond_21
    :try_start_a
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzan;->zzc:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v5

    move-object v8, v9

    move-object v9, v6

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_e

    :cond_22
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzam;->zzf:J

    invoke-virtual {v4, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzfu;J)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzan;->zzc:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zza(J)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzam;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v5

    const-string v7, "android"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v5

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_23
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_24
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_25
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    const-wide/32 v9, -0x80000000

    cmp-long v7, v7, v9

    if-eqz v7, :cond_26

    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_26
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v7

    if-eqz v7, :cond_2a

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzs()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_f

    :cond_2a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_2b
    :goto_f
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2c

    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_2c
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkr;->zze()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2d

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_2d
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v8

    if-eqz v8, :cond_2e

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v8

    if-eqz v8, :cond_33

    :cond_2e
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzj:Lcom/google/android/gms/measurement/internal/zzjr;

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11, v7}, Lcom/google/android/gms/measurement/internal/zzjr;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_2f

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2f

    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    if-eqz v11, :cond_33

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v11, :cond_33

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto/16 :goto_11

    :cond_2f
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzw()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzak;->zza(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_33

    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    if-eqz v8, :cond_33

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoz;->zzb()Z

    move-result v8

    if-eqz v8, :cond_30

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzcf:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v8

    if-nez v8, :cond_33

    :cond_30
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "android_id"

    invoke-static {v8, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_31

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v11, "null secure ID. appId"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "null"

    goto :goto_10

    :cond_31
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_32

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v11

    const-string v12, "empty secure ID. appId"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    :goto_10
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_33
    :goto_11
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzw()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzw()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzw()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzak;->zze()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzw()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzak;->zzf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzbx:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v8

    if-nez v8, :cond_34

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_34
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v8

    if-eqz v8, :cond_35

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    goto :goto_12

    :cond_35
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    :goto_12
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_36

    move-object/from16 v8, v25

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v8

    if-nez v8, :cond_3b

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v11

    if-eqz v11, :cond_37

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-direct {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_13

    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzz()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    :goto_13
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v11

    if-eqz v11, :cond_38

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v11

    if-eqz v11, :cond_39

    :cond_38
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzj:Lcom/google/android/gms/measurement/internal/zzjr;

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzjr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    :cond_39
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(J)V

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(J)V

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zze(J)V

    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzbx:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v11

    if-nez v11, :cond_3a

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    :cond_3a
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v11

    if-eqz v11, :cond_3c

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v11

    if-eqz v11, :cond_3c

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v7

    if-eqz v7, :cond_3d

    :cond_3c
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_3d
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x0

    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3f

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v8

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v8

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/zzkw;->zzd:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v11

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v11, v8, v12}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_3f
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)J

    move-result-wide v7
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz v5, :cond_42

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_15

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v5, v11}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzy()J

    move-result-wide v12

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    if-eqz v2, :cond_42

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;)I

    move-result v2

    int-to-long v13, v2

    cmp-long v2, v11, v13

    if-gez v2, :cond_42

    goto :goto_15

    :cond_42
    const/4 v6, 0x0

    :goto_15
    invoke-virtual {v3, v4, v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzan;JZ)Z

    move-result v2

    if-eqz v2, :cond_43

    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    goto :goto_16

    :catch_1
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v23

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw v2
.end method

.method private final zze(Lcom/google/android/gms/measurement/internal/zzn;)Z
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private final zzv()Lcom/google/android/gms/measurement/internal/zzfa;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Lcom/google/android/gms/measurement/internal/zzfa;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Network broadcast receiver not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzw()Lcom/google/android/gms/measurement/internal/zzkh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Lcom/google/android/gms/measurement/internal/zzkh;

    return-object p0
.end method

.method private final zzx()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    return-void
.end method

.method private final zzy()J
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzg:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkv;->zzg()Ljava/security/SecureRandom;

    move-result-object v4

    const v5, 0x5265c00

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzg:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_0
    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzz()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzg()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    const-string v0, "%032x"

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;
    .locals 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzac;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)V

    :cond_1
    return-object v0
.end method

.method protected final zza()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_6

    :cond_1
    if-nez p2, :cond_6

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Lcom/google/android/gms/measurement/internal/zzfg;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "queue"

    const-string v7, "rowid=?"

    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzx:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzx:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    throw p3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzx:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzo()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzy:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    move v3, p4

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zze:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzs:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :catchall_1
    move-exception p1

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzs:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    const-string v4, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    const/4 v6, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-gez v5, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v7, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v3, v8, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzz;

    if-eqz v7, :cond_5

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v9, "User property timed out"

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v15

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v8, :cond_6

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v8, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    if-gez v5, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v7, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v3, v8, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzz;

    if-eqz v8, :cond_9

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v10, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v15

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v10, v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v6, v3, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v6, :cond_a

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    goto :goto_4

    :cond_b
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v13

    :goto_5
    if-ge v6, v4, :cond_c

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v9, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    if-gez v5, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const-string v5, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v6, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v7, v6

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzz;

    if-eqz v15, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzkw;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v4, :cond_10

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzkw;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzz;)Z

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_12

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_9

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()Z

    move-result v14

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Z

    move-result v23

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Z

    move-result v24

    const/16 v25, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v28

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzai()Ljava/util/List;

    move-result-object v30

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v31

    if-eqz v31, :cond_3

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    move/from16 v32, v14

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v13, v1, v14}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move/from16 v32, v14

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v13}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    move-object/from16 v33, v2

    move-object v2, v15

    move-object/from16 v3, p2

    const/4 v13, 0x0

    move/from16 v14, v32

    move-object/from16 v34, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v30

    move-object/from16 v30, v1

    move-object/from16 v31, v33

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    :cond_6
    :goto_3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "No app data available; dropping event"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzki;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzp:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 13

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    move v12, v0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzku;->zze:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_sno"

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_8

    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_s"

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/zzam;->zzc:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_1
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_b
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzku;->zze:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzkw;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa:Lcom/google/android/gms/measurement/internal/zzky;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzx:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzx:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string/jumbo v5, "user_attributes"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "default_event_params"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_2
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzz;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzku;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzku;->zze:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    move p1, v2

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzkw;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzz;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzo:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzo:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzo:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-nez v1, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zze:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_c
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    if-ne p2, v5, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzo()V

    goto :goto_7

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    throw p1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzz:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzac;->zza()Ljava/lang/String;

    move-result-object p2

    const-string v1, "consent_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "consent_settings"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing consent setting. appId, error"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final zza(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    return-object p0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sys"

    const-string v4, "_pfo"

    const-string v5, "_uwa"

    const-string v0, "app_id=?"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v6

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Ljava/lang/String;)V

    :cond_1
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v6, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_2
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzm:J

    cmp-long v6, v9, v7

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    :cond_3
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzw()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzak;->zzh()V

    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzn:I

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v13, :cond_4

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v11, v14, v12, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v6, v15

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v14, "_npa"

    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v11, "auto"

    iget-object v12, v14, Lcom/google/android/gms/measurement/internal/zzkw;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v17, v3

    move v3, v13

    goto :goto_2

    :cond_6
    :goto_0
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    if-eqz v11, :cond_9

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v18, "_npa"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    const-wide/16 v19, 0x1

    goto :goto_1

    :cond_7
    move-wide/from16 v19, v7

    :goto_1
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const-wide/16 v7, 0x1

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, v18

    move-object/from16 v17, v3

    move v3, v13

    move-object v8, v14

    move-wide v13, v9

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkw;->zze:Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Ljava/lang/Long;

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_8
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_2

    :cond_9
    move-object/from16 v17, v3

    move v3, v13

    move-object v8, v14

    if-eqz v8, :cond_a

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v12, "_npa"

    const/4 v15, 0x0

    const-string v16, "auto"

    move-object v11, v7

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v11

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaf;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    :try_start_2
    aput-object v7, v13, v15

    const-string v14, "events"

    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string/jumbo v8, "user_attributes"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "conditional_properties"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "apps"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events_metadata"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "event_filters"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "property_filters"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "audience_filter_values"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "consent_settings"

    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_b

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v7, v12}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_3
    :try_start_3
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v11, "Error deleting application data. appId, error"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v11, v7, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_c
    const/4 v15, 0x0

    :goto_5
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v11

    const-wide/32 v13, -0x80000000

    cmp-long v0, v11, v13

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v11

    move-object v8, v4

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    cmp-long v0, v11, v3

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    move-object v8, v4

    :cond_e
    move v0, v15

    :goto_6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    move v3, v15

    :goto_7
    or-int/2addr v0, v3

    if-eqz v0, :cond_11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_au"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move v4, v15

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_8

    :cond_10
    move-object v8, v4

    :cond_11
    move v4, v15

    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    if-nez v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v7, "_f"

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    goto :goto_9

    :cond_12
    const/4 v3, 0x1

    if-ne v6, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v7, "_v"

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_24

    const-wide/32 v11, 0x36ee80

    div-long v13, v9, v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    mul-long/2addr v13, v11

    const-string v0, "_dac"

    const-string v3, "_r"

    const-string v7, "_c"

    const-string v15, "_et"

    if-nez v6, :cond_1f

    :try_start_4
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v12, "_fot"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v20, "auto"

    move-object v11, v6

    move-wide v13, v9

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zze()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v3, v17

    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "_sysu"

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzas:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    const-wide/16 v11, 0x1

    if-eqz v7, :cond_14

    invoke-virtual {v6, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_14
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    if-eqz v7, :cond_15

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    const-string v11, "first_open_count"

    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v17, v8

    move-wide v7, v13

    :cond_16
    :goto_a
    const-wide/16 v11, 0x0

    goto/16 :goto_11

    :cond_17
    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v11, "Package info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1c

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v7, v11, v15

    if-eqz v7, :cond_1c

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v17, v8

    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v7

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzbm:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 v7, 0x0

    cmp-long v0, v13, v7

    if-nez v0, :cond_19

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_18
    const-wide/16 v7, 0x1

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_19
    :goto_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    const/4 v0, 0x1

    :goto_d
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v12, "_fi"

    if-eqz v0, :cond_1b

    const-wide/16 v7, 0x1

    goto :goto_e

    :cond_1b
    const-wide/16 v7, 0x0

    :goto_e
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v7, v13

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_f

    :cond_1c
    move-object/from16 v17, v8

    move-wide v7, v13

    :goto_f
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_10

    :catch_3
    move-exception v0

    :try_start_8
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_16

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v5, v11

    if-eqz v5, :cond_1d

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    const-string v0, "_sysu"

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a

    :goto_11
    cmp-long v0, v7, v11

    if-ltz v0, :cond_1e

    move-object/from16 v3, v17

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_f"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v13, v6}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_12

    :cond_1f
    move-object v4, v15

    const/4 v5, 0x1

    if-ne v6, v5, :cond_22

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v12, "_fvt"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzku;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    invoke-virtual {v5, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzas:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    const-wide/16 v6, 0x1

    if-eqz v3, :cond_20

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_20
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    if-eqz v3, :cond_21

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_21
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_v"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v13, v5}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_22
    :goto_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzas:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_23
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_e"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_13

    :cond_24
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    if-eqz v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_cd"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_25
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zze()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzb()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v3, v1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzcl:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Lcom/google/android/gms/measurement/internal/zzku;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzj:Lcom/google/android/gms/measurement/internal/zzjr;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbn:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbi:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    :cond_b
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    :cond_c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    :cond_e
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(J)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzbx:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    :cond_10
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Z)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Z)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/Boolean;)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_11
    return-object v0

    :cond_12
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzf;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzex;

    return-object p0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get app instance id. appId"

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzd:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzd:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzg:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzg:Lcom/google/android/gms/measurement/internal/zzr;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzi:Lcom/google/android/gms/measurement/internal/zzih;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzi:Lcom/google/android/gms/measurement/internal/zzih;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzkr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzh:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb(Lcom/google/android/gms/measurement/internal/zzki;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzh:Lcom/google/android/gms/measurement/internal/zzkr;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzjr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzj:Lcom/google/android/gms/measurement/internal/zzjr;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public final zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method final zzn()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzl:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UploadController is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final zzo()V
    .locals 17

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzir;->zzaf()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_1
    :try_start_2
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzn:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzab()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :cond_5
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzap:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zzv()J

    move-result-wide v10

    sub-long v10, v3, v10

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_6

    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->d_()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_1d

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzy:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzz()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzy:J

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzf:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_b
    move-object v7, v9

    :goto_2
    if-eqz v7, :cond_d

    move v8, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zzh(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_e
    move v11, v0

    goto :goto_5

    :cond_f
    move v11, v2

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_6

    :cond_10
    move v12, v2

    goto :goto_7

    :cond_11
    :goto_6
    move v12, v0

    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_8

    :cond_12
    move v13, v2

    goto :goto_9

    :cond_13
    :goto_8
    move v13, v0

    :goto_9
    move v14, v2

    :goto_a
    if-ge v14, v8, :cond_18

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbo()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    const-wide/32 v9, 0x8101

    invoke-virtual {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    if-nez v11, :cond_14

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v12, :cond_15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_15
    if-nez v13, :cond_16

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_16
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzaw:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v9, v5, v10}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zzbk()[B

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza([B)J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_17
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_18
    move-object/from16 v16, v10

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_19
    const/4 v9, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgg;->zzbk()[B

    move-result-object v14

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzp:Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    const/4 v6, 0x1

    goto :goto_c

    :cond_1a
    move v6, v2

    :goto_c
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;

    if-eqz v6, :cond_1b

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_d

    :cond_1b
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v10, v16

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzw:Ljava/util/List;

    :goto_d
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    const-string v3, "?"

    if-lez v8, :cond_1c

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    :cond_1c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v6, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v3, v7, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzs:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v11

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v15, 0x0

    move-object v10, v6

    move-object v12, v5

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzex;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzez;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    :catch_0
    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_1d
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzy:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zzv()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1e
    :goto_e
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzt:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzac()V

    throw v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    return-object p0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    return-object p0
.end method

.method final zzr()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzm:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzm:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzad()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzv:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzen;->zzae()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzx()V

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzv:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Storage version upgraded. Previous, current version"

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzq:I

    return-void
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object p0

    return-object p0
.end method

.method final zzu()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzk:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object p0
.end method
