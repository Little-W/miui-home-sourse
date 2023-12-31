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

    .line 2820
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v1, 0x0

    const-string v2, "PAUSE"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2821
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v2, 0x1

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2822
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v3, 0x2

    const-string v4, "SEEK_TO"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2823
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v4, 0x3

    const-string v5, "CONFIG"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2824
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v5, 0x4

    const-string v6, "SET_VOLUME"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2825
    new-instance v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v6, 0x5

    const-string v7, "INVALID"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 2819
    sget-object v7, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v1, v0, v6

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

    .line 2819
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
    .locals 1

    .line 2819
    const-class v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
    .locals 1

    .line 2819
    sget-object v0, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    return-object v0
.end method
