.class final enum Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$VariableBinderCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

.field public static final enum Invalid:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

.field public static final enum Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 733
    new-instance v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string v1, "Refresh"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    new-instance v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string v1, "Invalid"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    const/4 v0, 0x2

    .line 732
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    sget-object v1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->$VALUES:[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 732
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;
    .locals 1

    .line 732
    const-class v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;
    .locals 1

    .line 732
    sget-object v0, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->$VALUES:[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    return-object v0
.end method
