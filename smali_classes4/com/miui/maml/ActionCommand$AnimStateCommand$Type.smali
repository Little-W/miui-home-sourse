.class final enum Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$AnimStateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field public static final enum CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field public static final enum REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field public static final enum UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2355
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 2356
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    const/4 v2, 0x1

    const-string v3, "REMOVE"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 2357
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    const/4 v3, 0x2

    const-string v4, "CLEAR"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 2358
    new-instance v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    const/4 v4, 0x3

    const-string v5, "INVALID"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 2354
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;
    .locals 1

    .line 2354
    const-class v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;
    .locals 1

    .line 2354
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    return-object v0
.end method
