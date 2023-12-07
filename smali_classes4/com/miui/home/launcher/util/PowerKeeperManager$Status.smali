.class public final enum Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
.super Ljava/lang/Enum;
.source "PowerKeeperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/PowerKeeperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/util/PowerKeeperManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum GESTURE_START:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_ASSISTANT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_HOME:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_ONE_HAND:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 20
    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v1, 0x0

    const-string v2, "GESTURE_START"

    const-string v3, "gesture_start"

    invoke-direct {v0, v2, v1, v3}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_START:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v2, 0x1

    const-string v3, "GESTURE_END"

    const-string v4, "gesture_end"

    invoke-direct {v0, v3, v2, v4}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    .line 21
    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v3, 0x2

    const-string v4, "TO_HOME"

    const-string v5, "to_home"

    invoke-direct {v0, v4, v3, v5}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_HOME:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v4, 0x3

    const-string v5, "TO_RECENT"

    const-string v6, "to_recent"

    invoke-direct {v0, v5, v4, v6}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v5, 0x4

    const-string v6, "TO_APP"

    const-string v7, "to_app"

    invoke-direct {v0, v6, v5, v7}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    .line 22
    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v6, 0x5

    const-string v7, "TO_ASSISTANT"

    const-string v8, "to_assistant"

    invoke-direct {v0, v7, v6, v8}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ASSISTANT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v7, 0x6

    const-string v8, "TO_ONE_HAND"

    const-string v9, "to_one_hand"

    invoke-direct {v0, v8, v7, v9}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ONE_HAND:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    .line 19
    sget-object v8, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_START:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v8, v0, v1

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_HOME:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ASSISTANT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ONE_HAND:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->$VALUES:[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
    .locals 1

    .line 19
    const-class v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->$VALUES:[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    return-object v0
.end method
