.class final Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;
.super Lcom/google/android/datatransport/cct/internal/ClientInfo;
.source "AutoValue_ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;
    }
.end annotation


# instance fields
.field private final androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

.field private final clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/ClientInfo;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 18
    iput-object p2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;-><init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/ClientInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 47
    check-cast p1, Lcom/google/android/datatransport/cct/internal/ClientInfo;

    .line 48
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->getClientType()Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->getClientType()Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    if-nez p0, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->getAndroidClientInfo()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->getAndroidClientInfo()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public getAndroidClientInfo()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    return-object p0
.end method

.method public getClientType()Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 60
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo{clientType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
