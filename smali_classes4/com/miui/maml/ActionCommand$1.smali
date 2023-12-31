.class synthetic Lcom/miui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

.field static final synthetic $SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

.field static final synthetic $SwitchMap$com$miui$maml$SoundManager$Command:[I

.field static final synthetic $SwitchMap$com$miui$maml$data$VariableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 3513
    invoke-static {}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v2, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v3, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v3}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v4, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v4}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_SPEED:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v7, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v7}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v8, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v8}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v9, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY_SEGMENTS:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v9}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_LOOP_COUNT:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 2875
    :catch_8
    invoke-static {}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    :try_start_9
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 2779
    :catch_d
    invoke-static {}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    :try_start_e
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 2620
    :catch_12
    invoke-static {}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->values()[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    :try_start_13
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 2515
    :catch_16
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->values()[Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    :try_start_17
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 2418
    :catch_19
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->values()[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    :try_start_1a
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 2317
    :catch_1c
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    :try_start_1d
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    .line 2240
    :catch_20
    invoke-static {}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    :try_start_21
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 2157
    :catch_22
    invoke-static {}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    :try_start_23
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v9, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v9}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v9

    aput v6, v5, v9
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v7, v5, v6
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v8, v5, v6
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    .line 1770
    :catch_30
    invoke-static {}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    :try_start_31
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    .line 1718
    :catch_31
    invoke-static {}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    :try_start_32
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    .line 1599
    :catch_33
    invoke-static {}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    :try_start_34
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    .line 1520
    :catch_38
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->values()[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    :try_start_39
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 1308
    :catch_3c
    invoke-static {}, Lcom/miui/maml/SoundManager$Command;->values()[Lcom/miui/maml/SoundManager$Command;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    :try_start_3d
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    .line 1184
    :catch_40
    invoke-static {}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    :try_start_41
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    .line 1067
    :catch_44
    invoke-static {}, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    :try_start_45
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    sget-object v5, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    .line 861
    :catch_45
    invoke-static {}, Lcom/miui/maml/data/VariableType;->values()[Lcom/miui/maml/data/VariableType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    :try_start_46
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    sget-object v5, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v5}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    sget-object v4, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    sget-object v1, Lcom/miui/maml/data/VariableType;->JSONO:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    sget-object v1, Lcom/miui/maml/data/VariableType;->JSONA:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
