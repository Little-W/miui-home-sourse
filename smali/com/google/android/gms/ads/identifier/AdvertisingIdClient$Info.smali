.class public final Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private final zzq:Ljava/lang/String;

.field private final zzr:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->zzq:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->zzr:Z

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->zzq:Ljava/lang/String;

    return-object p0
.end method

.method public final isLimitAdTrackingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->zzr:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->zzq:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->zzr:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
