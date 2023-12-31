.class final enum Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$JsonObjectCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field public static final enum REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2719
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2720
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v2, 0x1

    const-string v3, "PUT_STRING"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2721
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v3, 0x2

    const-string v4, "PUT_BOOLEAN"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2722
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v4, 0x3

    const-string v5, "PUT_INT"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2723
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v5, 0x4

    const-string v6, "PUT_JSON_OBJECT"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2724
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v6, 0x5

    const-string v7, "PUT_JSON_ARRAY"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2725
    new-instance v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v7, 0x6

    const-string v8, "REMOVE"

    invoke-direct {v0, v8, v7}, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    .line 2718
    sget-object v8, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    .locals 1

    .line 2718
    const-class v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    .locals 1

    .line 2718
    sget-object v0, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    return-object v0
.end method
