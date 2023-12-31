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

    .line 2536
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v1, 0x0

    const-string v2, "TO"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2537
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v2, 0x1

    const-string v3, "SET_TO"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2538
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v3, 0x2

    const-string v4, "FROM_TO"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2539
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v4, 0x3

    const-string v5, "CANCEL"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2540
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v5, 0x4

    const-string v6, "ADD_RANGE_BOARD"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ADD_RANGE_BOARD:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2541
    new-instance v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v6, 0x5

    const-string v7, "INVALID"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 2535
    sget-object v7, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v7, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ADD_RANGE_BOARD:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    aput-object v1, v0, v6

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

    .line 2535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    .locals 1

    .line 2535
    const-class v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    .locals 1

    .line 2535
    sget-object v0, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    return-object v0
.end method
