.class public final Lcom/google/android/gms/measurement/internal/zzex;
.super Lcom/google/android/gms/measurement/internal/zzki;
.source "com.google.android.gms:play-services-measurement@@18.0.0"


# instance fields
.field private final zzb:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkx;

    invoke-direct {p1}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzex;->zzb:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzex;Ljava/net/HttpURLConnection;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zza(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/net/HttpURLConnection;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 25
    :cond_2
    throw p0
.end method


# virtual methods
.method public final bridge synthetic f_()Lcom/google/android/gms/measurement/internal/zzkr;
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->f_()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object p0

    return-object p0
.end method

.method protected final zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 27
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzex;->zzb:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 31
    invoke-virtual {v0, p0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 32
    :cond_0
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 p0, 0x0

    .line 33
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v0, 0xea60

    .line 34
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v0, 0xee48

    .line 35
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x1

    .line 37
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 28
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to obtain HTTP connection"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic zza()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zza()V

    return-void
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()V

    return-void
.end method

.method protected final zzd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zze()Z
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaj()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzjr;
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzf()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzj()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object p0

    return-object p0
.end method
