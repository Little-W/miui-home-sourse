.class public abstract Lcom/miui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$LottieCommand;,
        Lcom/miui/maml/ActionCommand$LoopCommand;,
        Lcom/miui/maml/ActionCommand$MultiCommand;,
        Lcom/miui/maml/ActionCommand$IfCommand;,
        Lcom/miui/maml/ActionCommand$FieldCommand;,
        Lcom/miui/maml/ActionCommand$MethodCommand;,
        Lcom/miui/maml/ActionCommand$BaseMethodCommand;,
        Lcom/miui/maml/ActionCommand$ObjVar;,
        Lcom/miui/maml/ActionCommand$VideoCommand;,
        Lcom/miui/maml/ActionCommand$JsonObjectCommand;,
        Lcom/miui/maml/ActionCommand$FunctionPerformCommand;,
        Lcom/miui/maml/ActionCommand$ActionPerformCommand;,
        Lcom/miui/maml/ActionCommand$EaseTypeCommand;,
        Lcom/miui/maml/ActionCommand$FolmeCommand;,
        Lcom/miui/maml/ActionCommand$AnimConfigCommand;,
        Lcom/miui/maml/ActionCommand$AnimStateCommand;,
        Lcom/miui/maml/ActionCommand$AnimationCommand;,
        Lcom/miui/maml/ActionCommand$TickListenerCommand;,
        Lcom/miui/maml/ActionCommand$GraphicsCommand;,
        Lcom/miui/maml/ActionCommand$PbrCommand;,
        Lcom/miui/maml/ActionCommand$SensorBinderCommand;,
        Lcom/miui/maml/ActionCommand$TargetCommand;,
        Lcom/miui/maml/ActionCommand$AnimationProperty;,
        Lcom/miui/maml/ActionCommand$VisibilityProperty;,
        Lcom/miui/maml/ActionCommand$PropertyCommand;,
        Lcom/miui/maml/ActionCommand$DelayCommand;,
        Lcom/miui/maml/ActionCommand$ConditionCommand;,
        Lcom/miui/maml/ActionCommand$ExternCommand;,
        Lcom/miui/maml/ActionCommand$SoundCommand;,
        Lcom/miui/maml/ActionCommand$IntentCommand;,
        Lcom/miui/maml/ActionCommand$VariableBinderCommand;,
        Lcom/miui/maml/ActionCommand$PermanenceCommand;,
        Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;,
        Lcom/miui/maml/ActionCommand$FrameRateCommand;,
        Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lcom/miui/maml/ActionCommand$DataSwitchCommand;,
        Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lcom/miui/maml/ActionCommand$WifiSwitchCommand;,
        Lcom/miui/maml/ActionCommand$WifiStateTracker;,
        Lcom/miui/maml/ActionCommand$StateTracker;,
        Lcom/miui/maml/ActionCommand$OnOffCommandHelper;,
        Lcom/miui/maml/ActionCommand$RingModeCommand;,
        Lcom/miui/maml/ActionCommand$ModeToggleHelper;,
        Lcom/miui/maml/ActionCommand$NotificationReceiver;,
        Lcom/miui/maml/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mScreenElement:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 3756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3757
    iput-object p1, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 72
    sget-object v0, Lcom/miui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand;
    .locals 3

    .line 3714
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3718
    :cond_0
    new-instance v0, Lcom/miui/maml/util/Variable;

    invoke-direct {v0, p1}, Lcom/miui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3720
    invoke-static {p0, p1, p2}, Lcom/miui/maml/ActionCommand$PropertyCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;

    move-result-object p0

    return-object p0

    .line 3723
    :cond_1
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RingMode"

    .line 3724
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3725
    new-instance p1, Lcom/miui/maml/ActionCommand$RingModeCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$RingModeCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "Wifi"

    .line 3726
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3727
    new-instance p1, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v0, "Bluetooth"

    .line 3728
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3729
    new-instance p1, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const-string v0, "Data"

    .line 3730
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3731
    new-instance p1, Lcom/miui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$DataSwitchCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string v0, "UsbStorage"

    .line 3732
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3733
    new-instance p1, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public static create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3597
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "condition"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    .line 3598
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const-string v3, "delayCondition"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "delay"

    .line 3599
    invoke-static {p0, v5, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v5

    .line 3601
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 3602
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v10, "ActionCommand"

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "LoopCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v9, "FunctionCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v9, "FolmeCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v9, "BinderCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x2

    goto/16 :goto_0

    :sswitch_4
    const-string v9, "AnimStateCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x18

    goto/16 :goto_0

    :sswitch_5
    const-string v9, "VibrateCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x7

    goto/16 :goto_0

    :sswitch_6
    const-string v9, "FieldCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v9, "IfCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x15

    goto/16 :goto_0

    :sswitch_8
    const-string v9, "JsonObjectCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "SensorCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "VideoCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x19

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "VariableCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v9, "AnimationCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "GroupCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v9, "ExternCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x6

    goto/16 :goto_0

    :sswitch_f
    const-string v9, "PbrCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x1a

    goto/16 :goto_0

    :sswitch_10
    const-string v9, "MethodCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v9, "FrameRateCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v9, "MultiCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v9, "EaseTypeCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x12

    goto :goto_0

    :sswitch_14
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x10

    goto :goto_0

    :sswitch_15
    const-string v9, "AnimConfigCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x17

    goto :goto_0

    :sswitch_16
    const-string v9, "LottieCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x1c

    goto :goto_0

    :sswitch_17
    const-string v9, "PermanenceCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_18
    const-string v9, "Command"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :sswitch_19
    const-string v9, "TickListenerCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x13

    goto :goto_0

    :sswitch_1a
    const-string v9, "SoundCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v9, "IntentCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v9, "GraphicsCommand"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0xb

    :cond_1
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 3691
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/miui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;

    move-result-object v7

    check-cast v7, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;

    if-eqz v7, :cond_2

    .line 3694
    invoke-virtual {v7, p1, p0}, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;->create(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;

    move-result-object p0

    goto/16 :goto_1

    .line 3688
    :pswitch_0
    new-instance v7, Lcom/miui/maml/ActionCommand$LottieCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$LottieCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3685
    :pswitch_1
    new-instance v7, Lcom/miui/maml/ActionCommand$JsonObjectCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$JsonObjectCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3682
    :pswitch_2
    new-instance v7, Lcom/miui/maml/ActionCommand$PbrCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$PbrCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3679
    :pswitch_3
    new-instance v7, Lcom/miui/maml/ActionCommand$VideoCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$VideoCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3676
    :pswitch_4
    new-instance v7, Lcom/miui/maml/ActionCommand$AnimStateCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3673
    :pswitch_5
    new-instance v7, Lcom/miui/maml/ActionCommand$AnimConfigCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$AnimConfigCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3670
    :pswitch_6
    new-instance v7, Lcom/miui/maml/ActionCommand$SensorBinderCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$SensorBinderCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3667
    :pswitch_7
    new-instance v7, Lcom/miui/maml/ActionCommand$IfCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$IfCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3664
    :pswitch_8
    new-instance v7, Lcom/miui/maml/ActionCommand$FunctionPerformCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$FunctionPerformCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3661
    :pswitch_9
    new-instance v7, Lcom/miui/maml/ActionCommand$TickListenerCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$TickListenerCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3658
    :pswitch_a
    new-instance v7, Lcom/miui/maml/ActionCommand$EaseTypeCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$EaseTypeCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3655
    :pswitch_b
    new-instance v7, Lcom/miui/maml/ActionCommand$FolmeCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$FolmeCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3652
    :pswitch_c
    new-instance v7, Lcom/miui/maml/ActionCommand$ActionPerformCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$ActionPerformCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3649
    :pswitch_d
    new-instance v7, Lcom/miui/maml/ActionCommand$AnimationCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$AnimationCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto/16 :goto_2

    .line 3646
    :pswitch_e
    new-instance v7, Lcom/miui/maml/ActionCommand$LoopCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$LoopCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3643
    :pswitch_f
    new-instance v7, Lcom/miui/maml/ActionCommand$MultiCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3639
    :pswitch_10
    new-instance v7, Lcom/miui/maml/ActionCommand$GraphicsCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3636
    :pswitch_11
    new-instance v7, Lcom/miui/maml/ActionCommand$FieldCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$FieldCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3633
    :pswitch_12
    new-instance v7, Lcom/miui/maml/ActionCommand$MethodCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$MethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3630
    :pswitch_13
    new-instance v7, Lcom/miui/maml/ActionCommand$FrameRateCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$FrameRateCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3627
    :pswitch_14
    new-instance v7, Lcom/miui/maml/VibrateCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/VibrateCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3624
    :pswitch_15
    new-instance v7, Lcom/miui/maml/ActionCommand$ExternCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$ExternCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3621
    :pswitch_16
    new-instance v7, Lcom/miui/maml/ActionCommand$SoundCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$SoundCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3618
    :pswitch_17
    new-instance v7, Lcom/miui/maml/ActionCommand$IntentCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$IntentCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3615
    :pswitch_18
    new-instance v7, Lcom/miui/maml/ActionCommand$PermanenceCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$PermanenceCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3612
    :pswitch_19
    new-instance v7, Lcom/miui/maml/ActionCommand$VariableBinderCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$VariableBinderCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 3609
    :pswitch_1a
    new-instance v7, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;

    invoke-direct {v7, p1, p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_2

    :pswitch_1b
    const-string v7, "target"

    .line 3604
    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    .line 3605
    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3606
    invoke-static {p1, v7, p0}, Lcom/miui/maml/ActionCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand;

    move-result-object p0

    :goto_1
    move-object v7, p0

    goto :goto_2

    :cond_2
    move-object v7, v0

    :goto_2
    if-nez v7, :cond_3

    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    .line 3702
    new-instance p0, Lcom/miui/maml/ActionCommand$ConditionCommand;

    invoke-direct {p0, v7, v2}, Lcom/miui/maml/ActionCommand$ConditionCommand;-><init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V

    goto :goto_3

    :cond_4
    move-object p0, v7

    :goto_3
    cmp-long p1, v5, v3

    if-lez p1, :cond_5

    .line 3705
    new-instance p1, Lcom/miui/maml/ActionCommand$DelayCommand;

    invoke-direct {p1, p0, v5, v6}, Lcom/miui/maml/ActionCommand$DelayCommand;-><init>(Lcom/miui/maml/ActionCommand;J)V

    move-object p0, p1

    :cond_5
    if-eqz v1, :cond_6

    .line 3708
    new-instance p1, Lcom/miui/maml/ActionCommand$ConditionCommand;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/ActionCommand$ConditionCommand;-><init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V

    move-object p0, p1

    :cond_6
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x767f5de0 -> :sswitch_1c
        -0x7264f711 -> :sswitch_1b
        -0x67717ca4 -> :sswitch_1a
        -0x65361f86 -> :sswitch_19
        -0x642188d5 -> :sswitch_18
        -0x4b4a2d5d -> :sswitch_17
        -0x4a646974 -> :sswitch_16
        -0x48618908 -> :sswitch_15
        -0x44fc1feb -> :sswitch_14
        -0x3d79f23d -> :sswitch_13
        -0x2dd3ac0e -> :sswitch_12
        -0x1ab20542 -> :sswitch_11
        -0xa89b8f6 -> :sswitch_10
        -0x8b5b575 -> :sswitch_f
        0x24a136b -> :sswitch_e
        0x2d9d57ec -> :sswitch_d
        0x306e6347 -> :sswitch_c
        0x364dd90f -> :sswitch_b
        0x39abc670 -> :sswitch_a
        0x3ca48e11 -> :sswitch_9
        0x418a3ae4 -> :sswitch_8
        0x4719ff4e -> :sswitch_7
        0x4a0cfd11 -> :sswitch_6
        0x4aa3a2fc -> :sswitch_5
        0x60d7664b -> :sswitch_4
        0x69bdbe21 -> :sswitch_3
        0x7190e150 -> :sswitch_2
        0x74683833 -> :sswitch_1
        0x77cb57e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 0

    .line 3781
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getScreenContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 3773
    iget-object p0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    return-object p0
.end method

.method protected final getScreenContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 3777
    iget-object p0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    return-object p0
.end method

.method protected getScreenElement()Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    .line 3765
    iget-object p0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    return-object p0
.end method

.method protected final getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 3769
    iget-object p0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method protected isExpressionsValid([Lcom/miui/maml/data/Expression;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    move v0, p0

    .line 3742
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3743
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3747
    :cond_1
    :goto_1
    array-length p1, p1

    if-ne v0, p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public perform()V
    .locals 0

    .line 3761
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->doPerform()V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
