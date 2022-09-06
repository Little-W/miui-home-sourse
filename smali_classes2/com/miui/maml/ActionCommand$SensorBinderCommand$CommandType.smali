.class final enum Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$SensorBinderCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

.field public static final enum TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

.field public static final enum TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1552
    new-instance v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 1553
    new-instance v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    const-string v1, "TURN_ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 1554
    new-instance v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    const-string v1, "TURN_OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    const/4 v0, 0x3

    .line 1551
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    sget-object v1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1551
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
    .locals 1

    .line 1551
    const-class v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;
    .locals 1

    .line 1551
    sget-object v0, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    return-object v0
.end method
