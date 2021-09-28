.class final enum Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$AnimationCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1898
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1899
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1900
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PAUSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1901
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "RESUME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1902
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PLAY_WITH_PARAMS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    const/4 v0, 0x5

    .line 1897
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1897
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .line 1897
    const-class v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .line 1897
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object v0
.end method
