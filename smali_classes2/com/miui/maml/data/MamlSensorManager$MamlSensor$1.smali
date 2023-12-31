.class Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/MamlSensorManager$MamlSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;


# direct methods
.method constructor <init>(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    invoke-static {v0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$300(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    invoke-static {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 79
    invoke-interface {v1, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 81
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
