.class final enum Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$VideoCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2456
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2457
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2458
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "SEEK_TO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2459
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "CONFIG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2460
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "SET_VOLUME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2461
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v0, 0x6

    .line 2455
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
    .locals 1

    .line 2455
    const-class v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
    .locals 1

    .line 2455
    sget-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    return-object v0
.end method
