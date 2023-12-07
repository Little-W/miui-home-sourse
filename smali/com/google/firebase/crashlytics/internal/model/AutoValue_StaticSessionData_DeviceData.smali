.class final Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;
.super Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;


# instance fields
.field private final arch:I

.field private final availableProcessors:I

.field private final diskSpace:J

.field private final isEmulator:Z

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final modelClass:Ljava/lang/String;

.field private final state:I

.field private final totalRam:J


# direct methods
.method constructor <init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;-><init>()V

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->arch:I

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->model:Ljava/lang/String;

    iput p3, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->availableProcessors:I

    iput-wide p4, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->totalRam:J

    iput-wide p6, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->diskSpace:J

    iput-boolean p8, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->isEmulator:Z

    iput p9, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->state:I

    if-eqz p10, :cond_1

    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->manufacturer:Ljava/lang/String;

    if-eqz p11, :cond_0

    iput-object p11, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->modelClass:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null modelClass"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null manufacturer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null model"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public arch()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->arch:I

    return p0
.end method

.method public availableProcessors()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->availableProcessors:I

    return p0
.end method

.method public diskSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->diskSpace:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->arch:I

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->arch()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->model:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->model()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->availableProcessors:I

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->availableProcessors()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->totalRam:J

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->totalRam()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->diskSpace:J

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->diskSpace()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->isEmulator:Z

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->isEmulator()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->state:I

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->state()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->manufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->modelClass:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->modelClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->arch:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->model:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->availableProcessors:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->totalRam:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->diskSpace:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->isEmulator:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->state:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->modelClass:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isEmulator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->isEmulator:Z

    return p0
.end method

.method public manufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public model()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->model:Ljava/lang/String;

    return-object p0
.end method

.method public modelClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->modelClass:Ljava/lang/String;

    return-object p0
.end method

.method public state()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->state:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceData{arch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->arch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", availableProcessors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->availableProcessors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalRam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->totalRam:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", diskSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->diskSpace:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isEmulator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->isEmulator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->modelClass:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalRam()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_StaticSessionData_DeviceData;->totalRam:J

    return-wide v0
.end method
