.class final enum Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$LottieCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum GOTO_AND_PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum GOTO_AND_STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum PLAY_SEGMENTS:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum RESUME:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum SET_LOOP_COUNT:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum SET_SPEED:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field public static final enum STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 3477
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v1, 0x0

    const-string v2, "PAUSE"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3478
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v2, 0x1

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3479
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v3, 0x2

    const-string v4, "RESUME"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3480
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v4, 0x3

    const-string v5, "STOP"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3481
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v5, 0x4

    const-string v6, "SET_SPEED"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_SPEED:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3482
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v6, 0x5

    const-string v7, "GOTO_AND_PLAY"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3483
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v7, 0x6

    const-string v8, "GOTO_AND_STOP"

    invoke-direct {v0, v8, v7}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3484
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/4 v8, 0x7

    const-string v9, "PLAY_SEGMENTS"

    invoke-direct {v0, v9, v8}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY_SEGMENTS:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3485
    new-instance v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/16 v9, 0x8

    const-string v10, "SET_LOOP_COUNT"

    invoke-direct {v0, v10, v9}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_LOOP_COUNT:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    .line 3476
    sget-object v10, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_SPEED:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY_SEGMENTS:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_LOOP_COUNT:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;
    .locals 1

    .line 3476
    const-class v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;
    .locals 1

    .line 3476
    sget-object v0, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    return-object v0
.end method
