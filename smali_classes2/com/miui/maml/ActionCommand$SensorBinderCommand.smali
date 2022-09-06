.class Lcom/miui/maml/ActionCommand$SensorBinderCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SensorCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1560
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1561
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string p1, "command"

    .line 1562
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1563
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x398c784e

    if-eq p2, v0, :cond_1

    const v0, -0x3367a0c4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "turnOn"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "turnOff"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1571
    sget-object p1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    goto :goto_2

    .line 1568
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    goto :goto_2

    .line 1565
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 1578
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1579
    instance-of v1, v0, Lcom/miui/maml/data/SensorBinder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1582
    :cond_0
    check-cast v0, Lcom/miui/maml/data/SensorBinder;

    .line 1583
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1588
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/maml/data/SensorBinder;->turnOffSensorBinder()V

    goto :goto_0

    .line 1585
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/maml/data/SensorBinder;->turnOnSensorBinder()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
