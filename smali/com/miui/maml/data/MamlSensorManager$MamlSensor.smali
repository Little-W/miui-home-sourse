.class Lcom/miui/maml/data/MamlSensorManager$MamlSensor;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/MamlSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MamlSensor"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;-><init>(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)V

    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p1, "MAML_SensorManager"

    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wront sensor type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    iput p2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 95
    iput p3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    const-string p3, "sensor"

    .line 96
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 97
    iget-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 98
    iget-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_1

    const-string p1, "MAML_SensorManager"

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to get sensor! TYPE: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private registerListener()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    if-nez v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    const-string v0, "MAML_SensorManager"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    return v0
.end method

.method private unRegisterListener()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    const-string v0, "MAML_SensorManager"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/hardware/SensorEventListener;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 109
    iget v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    if-ge v0, p1, :cond_0

    .line 110
    iput p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    const/4 p2, 0x1

    :cond_0
    if-eqz p2, :cond_1

    .line 113
    iget-boolean p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeCallback(Landroid/hardware/SensorEventListener;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 128
    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    .line 129
    iput v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 130
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 131
    iget v4, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    goto :goto_0

    .line 135
    :cond_2
    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v2, v1, :cond_3

    const/4 p1, 0x1

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 143
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 144
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    .line 146
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
