.class final enum Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$FolmeCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$FolmeCommand$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field public static final enum ADD_RANGE_BOARD:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field public static final enum CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field public static final enum FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field public static final enum SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field public static final enum TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2401
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const-string v1, "TO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2402
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const-string v1, "SET_TO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2403
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const-string v1, "FROM_TO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2404
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const-string v1, "CANCEL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2405
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const-string v1, "ADD_RANGE_BOARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ADD_RANGE_BOARD:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2406
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const-string v1, "INVALID"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v0, 0x6

    .line 2400
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ADD_RANGE_BOARD:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    .locals 1

    .line 2400
    const-class v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    .locals 1

    .line 2400
    sget-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    return-object v0
.end method
