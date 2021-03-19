.class public final enum Lcom/miui/maml/elements/VariableArrayElement$Type;
.super Ljava/lang/Enum;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/VariableArrayElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/VariableArrayElement$Type;

.field public static final enum DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

.field public static final enum STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement$Type;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/VariableArrayElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 40
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement$Type;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/elements/VariableArrayElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/maml/elements/VariableArrayElement$Type;->$VALUES:[Lcom/miui/maml/elements/VariableArrayElement$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/VariableArrayElement$Type;
    .locals 1

    .line 38
    const-class v0, Lcom/miui/maml/elements/VariableArrayElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/VariableArrayElement$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/VariableArrayElement$Type;
    .locals 1

    .line 38
    sget-object v0, Lcom/miui/maml/elements/VariableArrayElement$Type;->$VALUES:[Lcom/miui/maml/elements/VariableArrayElement$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/VariableArrayElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/VariableArrayElement$Type;

    return-object v0
.end method
