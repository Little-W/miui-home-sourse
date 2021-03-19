.class final enum Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;
.super Ljava/lang/Enum;
.source "UnlockAnimationStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

.field public static final enum IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

.field public static final enum PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

.field public static final enum PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

.field public static final enum RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 33
    new-instance v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v1, "PREPARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 34
    new-instance v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v1, "PAUSE_WAIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 35
    new-instance v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v1, "RESUME_WAIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->$VALUES:[Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;
    .locals 1

    .line 31
    const-class v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;
    .locals 1

    .line 31
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->$VALUES:[Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-object v0
.end method
